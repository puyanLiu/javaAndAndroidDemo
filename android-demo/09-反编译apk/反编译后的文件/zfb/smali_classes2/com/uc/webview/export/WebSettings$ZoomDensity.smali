.class public final enum Lcom/uc/webview/export/WebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final enum CLOSE:Lcom/uc/webview/export/WebSettings$ZoomDensity;

.field public static final enum FAR:Lcom/uc/webview/export/WebSettings$ZoomDensity;

.field public static final enum MEDIUM:Lcom/uc/webview/export/WebSettings$ZoomDensity;

.field private static final synthetic b:[Lcom/uc/webview/export/WebSettings$ZoomDensity;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;

    const-string/jumbo v1, "FAR"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v3, v2}, Lcom/uc/webview/export/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;->FAR:Lcom/uc/webview/export/WebSettings$ZoomDensity;

    .line 103
    new-instance v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;

    const-string/jumbo v1, "MEDIUM"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/uc/webview/export/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;->MEDIUM:Lcom/uc/webview/export/WebSettings$ZoomDensity;

    .line 104
    new-instance v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;

    const-string/jumbo v1, "CLOSE"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v5, v2}, Lcom/uc/webview/export/WebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;->CLOSE:Lcom/uc/webview/export/WebSettings$ZoomDensity;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/uc/webview/export/WebSettings$ZoomDensity;

    sget-object v1, Lcom/uc/webview/export/WebSettings$ZoomDensity;->FAR:Lcom/uc/webview/export/WebSettings$ZoomDensity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uc/webview/export/WebSettings$ZoomDensity;->MEDIUM:Lcom/uc/webview/export/WebSettings$ZoomDensity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uc/webview/export/WebSettings$ZoomDensity;->CLOSE:Lcom/uc/webview/export/WebSettings$ZoomDensity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;->b:[Lcom/uc/webview/export/WebSettings$ZoomDensity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/uc/webview/export/WebSettings$ZoomDensity;->a:I

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public static values()[Lcom/uc/webview/export/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/uc/webview/export/WebSettings$ZoomDensity;->b:[Lcom/uc/webview/export/WebSettings$ZoomDensity;

    invoke-virtual {v0}, [Lcom/uc/webview/export/WebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/WebSettings$ZoomDensity;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/uc/webview/export/WebSettings$ZoomDensity;->a:I

    return v0
.end method
