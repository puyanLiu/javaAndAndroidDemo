.class public Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "SignaturePageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "signature_activity"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "signature_title_bar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APEditText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "signature_edit"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "signature_edit_num"
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->d:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->setEditText(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->complete:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bt;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bt;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->getSignatureNet()V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 58
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 87
    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected dismissProgress()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->dismissProgressDialog()V

    .line 156
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getSignatureNet()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->showSendProgress()V

    .line 109
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 111
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 113
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getSignatureNet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->d:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->setEditText(Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->dismissProgress()V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {p0, v0}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->showKeyBoard(Landroid/app/Activity;Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method protected processErr(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->toast(Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method setEditText(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 168
    :cond_0
    return-void
.end method

.method protected setSignature(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->showSendProgress()V

    .line 124
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 126
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 124
    const-class v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipaySocilaInfoService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipaySocilaInfoService;

    .line 129
    new-instance v1, Lcom/alipay/mobilerelation/biz/shared/req/SetSignatureReq;

    invoke-direct {v1}, Lcom/alipay/mobilerelation/biz/shared/req/SetSignatureReq;-><init>()V

    .line 130
    iput-object p1, v1, Lcom/alipay/mobilerelation/biz/shared/req/SetSignatureReq;->signature:Ljava/lang/String;

    .line 132
    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipaySocilaInfoService;->setSignature(Lcom/alipay/mobilerelation/biz/shared/req/SetSignatureReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->dismissProgress()V

    .line 134
    if-eqz v0, :cond_0

    .line 135
    iget v1, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 136
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setSignature(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->finish()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->processErr(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->dismissProgress()V

    .line 144
    throw v0
.end method

.method protected showSendProgress()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 150
    const-string/jumbo v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 151
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
