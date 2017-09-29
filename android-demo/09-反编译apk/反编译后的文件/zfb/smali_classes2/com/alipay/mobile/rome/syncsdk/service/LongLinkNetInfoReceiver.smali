.class public Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LongLinkNetInfoReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "LongLinkNetInfoReceiver.java"

    const-class v2, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.rome.syncsdk.service.LongLinkNetInfoReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x58

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 29
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;ZI)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;->connectivityChanged(ZI)V

    goto :goto_0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addNetInfoListener(Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x1

    aget-object v0, v2, v0

    new-instance v2, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V

    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_0

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

    :cond_0
    return-void
.end method

.method public removeNetInfoListener(Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    return-void
.end method

.method public unregisterAllNetInfoListener()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    :cond_0
    return-void
.end method
