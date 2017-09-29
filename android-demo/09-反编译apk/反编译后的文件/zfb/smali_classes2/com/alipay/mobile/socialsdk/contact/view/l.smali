.class final Lcom/alipay/mobile/socialsdk/contact/view/l;
.super Ljava/lang/Object;
.source "VarifyNameMgrForContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->b:Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/view/l;)Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 50
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 52
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 50
    const-class v1, Lcom/alipay/mobileprod/biz/contact/ContactService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/contact/ContactService;

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->g:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;

    invoke-interface {v0, v1}, Lcom/alipay/mobileprod/biz/contact/ContactService;->validateReceiverName(Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;)Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->b()V

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->resultStatus:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->b:Z

    if-eqz v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/view/m;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/view/m;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/l;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->resultStatus:I

    const/16 v2, 0x138d

    if-ne v1, v2, :cond_2

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/view/n;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/view/n;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/l;Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->b()V

    .line 102
    throw v0

    .line 79
    :cond_2
    :try_start_1
    iget v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->resultStatus:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->b:Z

    if-nez v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/view/p;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/view/p;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/l;Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->b()V

    goto :goto_0

    .line 89
    :cond_3
    :try_start_2
    iget v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->resultStatus:I

    if-eq v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->b:Z

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/view/q;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/view/q;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/l;Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
