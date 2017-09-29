.class public Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "AddFriendDialogActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "layout_transparent"
.end annotation


# static fields
.field public static final MAX_LEN:I = 0x28


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->c:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 9
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V

    .line 66
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->a:Landroid/os/Bundle;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "addBatch"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->b:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "batchFriends"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->c:Ljava/util/Map;

    .line 60
    if-eqz v1, :cond_1

    .line 61
    new-instance v6, Lcom/alipay/mobile/socialsdk/contact/ui/a;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/a;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APInputDialog;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->b:Ljava/lang/String;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->create_group_add_friend_tip:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->show()V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->getInputContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSupportEmoji(Z)V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/socialsdk/R$string;->add_friend_verification_format:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/c;

    invoke-direct {v1, p0, v6}, Lcom/alipay/mobile/socialsdk/contact/ui/c;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->setPositiveListener(Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;)V

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/d;

    invoke-direct {v1, p0, v2, v6}, Lcom/alipay/mobile/socialsdk/contact/ui/d;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;Lcom/alipay/mobile/commonui/widget/APEditText;Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->setNegativeListener(Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;)V

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/e;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/f;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/f;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/g;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/g;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    .line 199
    invoke-virtual {p0, v0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->overridePendingTransition(II)V

    .line 200
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

.method protected sendBatchAddRpc(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 86
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 85
    const-class v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 89
    new-instance v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendBatchReq;

    invoke-direct {v1}, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendBatchReq;-><init>()V

    .line 90
    iput-object p1, v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendBatchReq;->message:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->c:Ljava/util/Map;

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendBatchReq;->targetUserMap:Ljava/util/Map;

    .line 92
    const-string/jumbo v2, "by_group"

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendBatchReq;->source:Ljava/lang/String;

    .line 96
    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->batchAddFriendRequest(Lcom/alipay/mobilerelation/biz/shared/req/AddFriendBatchReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_2

    .line 98
    iget-object v0, v2, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u53d1\u9001\u6210\u529f"

    .line 99
    :goto_0
    iget v1, v2, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v3, 0x144

    if-ne v1, v3, :cond_1

    iget-object v1, v2, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->dismissProgressDialog()V

    .line 101
    const/4 v1, 0x0

    iget-object v2, v2, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/b;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/b;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;)V

    .line 106
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 101
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    :goto_1
    return-void

    .line 98
    :cond_0
    iget-object v0, v2, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->toast(Ljava/lang/String;I)V

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->dismissProgressDialog()V

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->dismissProgressDialog()V

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V

    .line 116
    throw v0
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
