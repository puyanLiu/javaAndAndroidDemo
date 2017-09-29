.class public final Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;
.super Ljava/lang/Object;
.source "AmnetEnvHelper.java"


# static fields
.field public static CONTEXT:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->CONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public static final setAppContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->CONTEXT:Landroid/content/Context;

    .line 17
    return-void
.end method
