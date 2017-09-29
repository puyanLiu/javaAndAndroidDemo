.class public Lcom/uc/webview/export/Build$Version;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static API_LEVEL:I

.field public static BUILD_SERIAL:I

.field public static MAJOR:I

.field public static MINOR:I

.field public static NAME:Ljava/lang/String;

.field public static PATCH:I

.field public static SUPPORT_UCM_MIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x1

    sput v0, Lcom/uc/webview/export/Build$Version;->MAJOR:I

    .line 87
    const/16 v0, 0x9

    sput v0, Lcom/uc/webview/export/Build$Version;->MINOR:I

    .line 93
    const/16 v0, 0xc

    sput v0, Lcom/uc/webview/export/Build$Version;->BUILD_SERIAL:I

    .line 99
    const/16 v0, 0x8

    sput v0, Lcom/uc/webview/export/Build$Version;->PATCH:I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/uc/webview/export/Build$Version;->MAJOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/uc/webview/export/Build$Version;->MINOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/uc/webview/export/Build$Version;->BUILD_SERIAL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/uc/webview/export/Build$Version;->PATCH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "1.9.10.0"

    sput-object v0, Lcom/uc/webview/export/Build$Version;->SUPPORT_UCM_MIN:Ljava/lang/String;

    .line 117
    const/4 v0, 0x3

    sput v0, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
