using System;
using System.Net.Http;
using Urbexer.Services;

namespace Urbexer.ViewModels {
    public class BaseViewModel : ValidatingService {
        public ConnectionService connectionService = new ConnectionService();
        public HttpClient httpClient = new HttpClient(ConnectionService.clientHandler);
        public Action DisplayInvalidRegisterPrompt;
    }
}
