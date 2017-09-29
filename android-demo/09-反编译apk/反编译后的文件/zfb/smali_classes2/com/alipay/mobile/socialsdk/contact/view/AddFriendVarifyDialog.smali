.class public Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"


# static fields
.field public static final MAX_LEN:I = 0x28

.field public static final STATUS_ADD_FRIEND_NOW:I = 0x4

.field public static final STATUS_ADD_SUCCESS:I = 0x5

.field public static final STATUS_BUTTON_CANCEL:I = 0x0

.field public static final STATUS_BUTTON_SEND:I = 0x1

.field public static final STATUS_SEND_FINAL:I = 0x3

.field public static final STATUS_SEND_SUCCESS:I = 0x2


# instance fields
.field protected a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

.field private c:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->c:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    return-object v0
.end method

.method private a(IZ)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->c:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->c:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;->addFriendButtonCallBack(IZ)V

    .line 328
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;I)V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)V
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(IZ)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;Z)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 261
    new-instance v2, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    .line 263
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 265
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 263
    const-class v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 269
    new-instance v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;

    invoke-direct {v3}, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;-><init>()V

    .line 270
    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->source:Ljava/lang/String;

    .line 271
    iput-object p2, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->message:Ljava/lang/String;

    .line 272
    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    if-nez v1, :cond_0

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    :goto_0
    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->remarkName:Ljava/lang/String;

    .line 273
    iput-boolean v5, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->showRealName:Z

    .line 275
    if-eqz p3, :cond_3

    .line 276
    const-string/jumbo v1, "1"

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->bizType:Ljava/lang/String;

    .line 280
    :goto_1
    iput-boolean v5, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->showRealName:Z

    .line 281
    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->targetUserId:Ljava/lang/String;

    .line 282
    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->alipayAccount:Ljava/lang/String;

    .line 283
    const/4 v1, 0x0

    .line 285
    :try_start_0
    invoke-interface {v0, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->addFriendRequest(Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 286
    if-nez p3, :cond_1

    :try_start_1
    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v3, 0x144

    if-eq v1, v3, :cond_1

    .line 289
    iget-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 290
    iget-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 302
    :cond_1
    :goto_2
    return-object v0

    .line 272
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0

    .line 278
    :cond_3
    const-string/jumbo v1, "3"

    iput-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->bizType:Ljava/lang/String;

    goto :goto_1

    .line 292
    :cond_4
    :try_start_2
    const-string/jumbo v1, "\u5df2\u53d1\u9001"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "addFriendPre rpc\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    throw v0

    .line 299
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "addFriendPre \u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method protected final a(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APInputDialog;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    const-string/jumbo v2, "\u9a8c\u8bc1\u7533\u8bf7"

    const-string/jumbo v3, "\u9700\u8981\u53d1\u9001\u9a8c\u8bc1\u8bf7\u6c42\uff0c\u5e76\u5728\u5bf9\u65b9\u901a\u8fc7\u540e\u624d\u80fd\u6210\u4e3a\u670b\u53cb\u3002"

    const-string/jumbo v4, "\u53d1\u9001"

    const-string/jumbo v5, "\u53d6\u6d88"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/view/d;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->setPositiveListener(Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;)V

    .line 194
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/view/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/view/g;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->setNegativeListener(Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;)V

    .line 202
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/view/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/view/h;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->show()V

    .line 214
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->getInputContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSupportEmoji(Z)V

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6211\u662f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 224
    :cond_2
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/view/i;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/view/i;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->post(Ljava/lang/Runnable;)Z

    .line 231
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/view/j;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/view/j;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public addFriendDialog(Landroid/os/Bundle;)I
    .locals 11

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x3

    const/4 v8, 0x1

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_0

    move v0, v7

    .line 139
    :goto_0
    return v0

    .line 69
    :cond_0
    new-instance v9, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-direct {v9, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    .line 70
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/view/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/view/a;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)V

    invoke-virtual {v9, v0, v8, v1, v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 79
    if-eqz p1, :cond_2

    const-string/jumbo v0, "aliaccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    const-string/jumbo v1, "source"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    const-string/jumbo v1, "loginId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    :cond_1
    move-object v1, v0

    .line 80
    :goto_1
    :try_start_0
    const-string/jumbo v0, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;Z)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;

    move-result-object v2

    .line 83
    invoke-virtual {v9}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 84
    if-eqz v2, :cond_a

    .line 86
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v3, 0x13b

    if-ne v0, v3, :cond_4

    .line 87
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 88
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 89
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/view/b;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/mobile/socialsdk/contact/view/b;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v8

    .line 97
    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    move-object v1, v0

    goto :goto_1

    .line 90
    :cond_3
    :try_start_1
    const-string/jumbo v0, ""

    goto :goto_2

    .line 98
    :cond_4
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v3, 0x132

    if-ne v0, v3, :cond_6

    .line 99
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 100
    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->updateFriendStatusById(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(IZ)V

    .line 122
    :goto_3
    iget-object v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 123
    iget-object v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->clean()V

    move v0, v8

    .line 130
    goto/16 :goto_0

    .line 102
    :cond_6
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_8

    .line 103
    iget-object v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    const-string/jumbo v0, "\u6dfb\u52a0\u6210\u529f"

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V

    .line 106
    :cond_7
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 107
    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->updateFriendStatusById(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(IZ)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v9}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 133
    invoke-direct {p0, v10, v8}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(IZ)V

    .line 134
    throw v0

    .line 109
    :cond_8
    :try_start_2
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v1, 0x144

    if-ne v0, v1, :cond_9

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/view/c;

    invoke-direct {v4, p0, v9}, Lcom/alipay/mobile/socialsdk/contact/view/c;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/framework/app/ui/DialogHelper;)V

    .line 117
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v8

    .line 118
    goto/16 :goto_0

    .line 120
    :cond_9
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(IZ)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 136
    :catch_1
    move-exception v0

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 137
    invoke-direct {p0, v10, v8}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(IZ)V

    move v0, v7

    .line 139
    goto/16 :goto_0

    .line 126
    :cond_a
    const/4 v0, 0x3

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(IZ)V
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v7

    .line 127
    goto/16 :goto_0
.end method

.method public clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    .line 61
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->c:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;

    .line 62
    return-void
.end method
