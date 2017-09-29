.class public Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TlDataProcesser.java"


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "TlDataProcesser.java"

    const-class v2, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.socialsdk.timeline.processer.TlDataProcesser$OnWalletBack2ForegroundReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v5, " \u6536\u5230\u5230\u524d\u53f0\u7684\u901a\u77e5,\u65e0intent"

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " \u6536\u5230\u5230\u524d\u53f0\u7684\u901a\u77e5\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;->a:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method
