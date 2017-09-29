.class public final Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;
.super Ljava/lang/Object;
.source "ExtTransportEnv.java"


# static fields
.field private static volatile CONTEXT:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->CONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public static final setAppContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->CONTEXT:Landroid/content/Context;

    .line 17
    return-void
.end method
