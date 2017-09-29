.class Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AliuserWaitingActivity.java"


# static fields
.field private static final synthetic a:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AliuserWaitingActivity.java"

    const-class v2, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.ali.user.mobile.account.bind.AliuserWaitingActivity$1"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xbf

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    .line 189
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1
    sget-object v0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v2, v8

    if-eqz p2, :cond_0

    const-string/jumbo v2, "com.ali.user.mobile.account.bind.alipay_bind_taobao"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "flag"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "AliuserWaitingActivity"

    const-string/jumbo v5, "receive bind result broadcast: %s"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "2003"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    invoke-static {v2}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->access$4(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V

    :cond_0
    :goto_0
    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v4, "1000"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "1001"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "1002"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "1003"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    invoke-static {v2, v8}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->access$5(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;I)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    invoke-static {v4, v2}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->access$6(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
