.class public Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;
.super Ljava/lang/Object;
.source "MasterConfigureChangedListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "amnet_MasterConfigureChangedListener"

.field private static masterConfigureChangedListener:Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static final getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;->masterConfigureChangedListener:Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;->masterConfigureChangedListener:Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;

    .line 24
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;

    invoke-direct {v0}, Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;->masterConfigureChangedListener:Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "amnet_MasterConfigureChangedListener"

    const-string/jumbo v1, "MasterConfigureChangedListener#update"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-class v0, Lcom/alipay/mobile/common/transport/ext/MainProcConfigListenService;

    invoke-static {v0}, Lcom/alipay/pushsdk/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/MainProcConfigListenService;

    .line 35
    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/ext/MainProcConfigListenService;->notifyConfigureChangedEvent()V

    .line 36
    return-void
.end method
