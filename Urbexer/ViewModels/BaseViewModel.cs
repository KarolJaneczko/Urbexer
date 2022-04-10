using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net.Http;
using System.Runtime.CompilerServices;
using Urbexer.Models;
using Urbexer.Services;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class BaseViewModel : ValidatingService {
        public ConnectionService connectionService = new ConnectionService();
        public HttpClient httpClient = new HttpClient(ConnectionService.clientHandler);
        public Action DisplayInvalidRegisterPrompt;
    }
}
