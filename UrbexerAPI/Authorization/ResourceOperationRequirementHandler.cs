using APIpz.Entities;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;

namespace APIpz.Authorization
{
    public class ResourceOperationRequirementHandler 
        : AuthorizationHandler<ResourceOperationRequirement, Odwiedzony>
    {
        protected override Task HandleRequirementAsync(AuthorizationHandlerContext context, ResourceOperationRequirement requirement, Odwiedzony odwiedzony)
        {
            if (requirement.ResourceOperation == ResourceOperation.Create)
            {
                context.Succeed(requirement);
            }

            var userId = context.User.FindFirst(c => c.Type == ClaimTypes.NameIdentifier).Value;
            if (odwiedzony.OdwiedzonePrzez.Id == int.Parse(userId))
            {
                context.Succeed(requirement);
            }

            return Task.CompletedTask;
        }
    }
}
