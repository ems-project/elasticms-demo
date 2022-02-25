import dynForm from "./dyn-forms";


export default function form() {
    const iframes = document.querySelectorAll('iframe[data-form-id]');
    for (let i = 0; i < iframes.length; i++) {
        const form = new skeletonForm(iframes[i]);
        form.loadForm(iframes[i]);
    }

    console.log(iframes.length + ' forms have been initiated');
}

export class skeletonForm
{
    constructor(iframe)
    {
        this.iframe = iframe;
    }

    loadForm(iframe) {
        const iframeDoc = iframe.contentDocument || iframe.contentWindow.document;
        if (iframeDoc.readyState  !== 'complete'){
            iframe.onload = function() {
                loadForm(iframe);
            }
            return;
        }
        const formId = iframe.getAttribute('data-form-id');
        const messageId = iframe.getAttribute('data-message-id');
        const self = this;

        const emsForm = new window.emsForm({
            'idForm': formId,
            'idMessage': messageId,
            'idIframe': iframe.id,
            'context': self,
            'onLoad': function() {
                self.onLoad(this.elementForm, this.elementMessage);
            },
            'onSubmit': function() {
                self.onSubmit(this.elementForm, this.elementMessage);
            },
            'onError': function(errorMessage) {
                self.onError(this.elementForm, this.elementMessage, errorMessage);
            },
            'onResponse': function(json) {
                self.onResponse(this.elementForm, this.elementMessage, json);
            }
        });
        emsForm.init();
    }

    onLoad(elementForm, elementMessage) {
        dynForm(elementForm.id);
        console.log('My onload function');
    }

    onSubmit(elementForm, elementMessage) {
        console.log('My submit function');
    }

    onError(elementForm, elementMessage, errorMessage) {
        console.log('My error function:' + errorMessage);
    }

    onResponse(elementForm, elementMessage, json) {
        console.log('My response function');
    }
}
