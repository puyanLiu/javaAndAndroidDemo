.class public Lcom/uc/webview/export/Build;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static CORE_VERSION:Ljava/lang/String;

.field public static CPU_ARCH:Ljava/lang/String;

.field public static TIME:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

.field public static UCM_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "150930182932"

    sput-object v0, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "ucrelease"

    sput-object v0, Lcom/uc/webview/export/Build;->TYPE:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    sput-object v0, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    sput-object v0, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    sput-object v0, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "armv7-a"

    sput-object v0, Lcom/uc/webview/export/Build;->CPU_ARCH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method
