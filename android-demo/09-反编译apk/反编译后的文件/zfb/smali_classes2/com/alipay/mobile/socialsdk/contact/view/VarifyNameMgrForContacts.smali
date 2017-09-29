.class public Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;
.super Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;
.source "VarifyNameMgrForContacts.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final a(Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    iget v0, p1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->c:Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->i:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget v2, p1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->resultStatus:I

    iget-object v3, p1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->memo:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->canCheckName:Z

    .line 112
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;->onVerifyResult(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->c:Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->e:Ljava/lang/String;

    .line 116
    iget v2, p1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->resultStatus:I

    iget-object v3, p1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->memo:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->canCheckName:Z

    .line 115
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;->onVerifyResult(Ljava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->veryfyname_dialog_view:I

    .line 123
    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 124
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->error_tip:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->firstNameInputBox:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 125
    check-cast v1, Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 127
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/view/r;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/r;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->secondNameTextView:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 150
    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 152
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    const-string/jumbo v4, "\u786e\u5b9a"

    new-instance v5, Lcom/alipay/mobile/socialsdk/contact/view/s;

    invoke-direct {v5, p0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/s;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    const-string/jumbo v4, "\u53d6\u6d88"

    new-instance v5, Lcom/alipay/mobile/socialsdk/contact/view/t;

    invoke-direct {v5, p0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/t;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->b:Landroid/app/AlertDialog;

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->b:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/view/k;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/k;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 182
    return-void

    .line 174
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    const-string/jumbo v0, "\u8bf7\u8865\u5168\u5bf9\u65b9\u59d3\u540d,\u786e\u4fdd\u5b89\u5168"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a()V

    .line 36
    new-instance v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->g:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->g:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;->receiverId:Ljava/lang/String;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->g:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;

    const-string/jumbo v1, "1"

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;->optType:Ljava/lang/String;

    .line 46
    :goto_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/view/l;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/view/l;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 108
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->g:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->i:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;->receiverName:Ljava/lang/String;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->g:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;

    const-string/jumbo v1, "2"

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;->optType:Ljava/lang/String;

    goto :goto_0
.end method
