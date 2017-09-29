.class public Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;
.super Ljava/lang/Object;
.source "TransportEnvUtil.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static final setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    sput-object p0, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->a:Landroid/content/Context;

    .line 15
    return-void
.end method
