.class public Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;
.super Ljava/lang/Object;
.source "SnsLinkUtil.java"


# instance fields
.field private final a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

.field private final b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field private final c:Landroid/app/Activity;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/alipay/mobile/framework/service/common/RpcService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 38
    if-nez p1, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->c:Landroid/app/Activity;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->d:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 41
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->e:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 42
    return-void

    :cond_0
    move-object p2, p1

    .line 38
    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->dismissProgressDialog()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 160
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->toast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 83
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/share/ShareContent;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, p3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "SENT_SMS_ACTION"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->c:Landroid/app/Activity;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->c:Landroid/app/Activity;

    new-instance v5, Lcom/alipay/mobile/socialsdk/contact/util/c;

    invoke-direct {v5, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/util/c;-><init>(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "DELIVERED_SMS_ACTION"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->c:Landroid/app/Activity;

    invoke-static {v5, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->c:Landroid/app/Activity;

    new-instance v6, Lcom/alipay/mobile/socialsdk/contact/util/e;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/socialsdk/contact/util/e;-><init>(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 134
    new-instance v1, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;

    invoke-direct {v1}, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->userId:Ljava/lang/String;

    iput-object p1, v1, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->mobileNo:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->extInfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->e:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    invoke-interface {v0, v1}, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;->createSNSByMessage(Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;)Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSOperationResult;

    return-void
.end method


# virtual methods
.method public testShorLinkService(Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 3

    .prologue
    .line 50
    const-string/jumbo v0, "\u6b63\u5728\u751f\u6210\u77ed\u94fe\u63a5"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->showProgressDialog(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->b:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 51
    :cond_1
    new-instance v2, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;

    invoke-direct {v2}, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;-><init>()V

    .line 52
    iput-object p1, v2, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->mobileNo:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->userId:Ljava/lang/String;

    .line 54
    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/alipay/mobile/common/share/ShareContent;->getExtData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->extInfo:Ljava/lang/String;

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->e:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    .line 58
    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-interface {v0, v2}, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;->createShortLinkByMessage(Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;)Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;

    move-result-object v0

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a()V

    .line 62
    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;->success:Z

    if-eqz v2, :cond_4

    .line 63
    iget-object v0, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;->content:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    if-eqz v0, :cond_3

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->c:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/util/b;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/alipay/mobile/socialsdk/contact/util/b;-><init>(Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    :cond_3
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->a()V

    .line 67
    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
