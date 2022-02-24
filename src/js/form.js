import dynForm from "./dyn-forms";

export default function form() {

    const self = this;
    const iframes = document.querySelectorAll('iframe[data-form-id]');
    for (let i = 0; i < iframes.length; i++) {
        const iframe = iframes[i];
        loadForm(iframe);
    }




    function loadForm(iframe) {
        const iframeDoc = iframe.contentDocument || iframe.contentWindow.document;
        if (iframeDoc.readyState  !== 'complete'){
            iframe.onload = function() {
                loadForm(iframe);
            }
            return;
        }
        const formId = iframe.getAttribute('data-form-id');
        const messageId = iframe.getAttribute('data-message-id');

        const emsForm = new window.emsForm({
            'idForm': formId,
            'idMessage': messageId,
            'idIframe': iframe.id,
            'onLoad': function() {
                console.log('My onload function');
                dynForm(formId);
            },
            'onSubmit': function() {
                console.log('My submit function');
            },
            'onError': function(errorMessage) {
                console.log('My error function:' + errorMessage);
            },
            'onResponse': function(json) {
                console.log('My response function');
            }
        });
        emsForm.init();
    }

    console.log('Form initiated');
}
