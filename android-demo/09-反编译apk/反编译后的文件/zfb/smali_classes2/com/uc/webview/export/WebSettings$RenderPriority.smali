.class public final enum Lcom/uc/webview/export/WebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final enum HIGH:Lcom/uc/webview/export/WebSettings$RenderPriority;

.field public static final enum LOW:Lcom/uc/webview/export/WebSettings$RenderPriority;

.field public static final enum NORMAL:Lcom/uc/webview/export/WebSettings$RenderPriority;

.field private static final synthetic a:[Lcom/uc/webview/export/WebSettings$RenderPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    new-instance v0, Lcom/uc/webview/export/WebSettings$RenderPriority;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$RenderPriority;->NORMAL:Lcom/uc/webview/export/WebSettings$RenderPriority;

    .line 183
    new-instance v0, Lcom/uc/webview/export/WebSettings$RenderPriority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/uc/webview/export/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$RenderPriority;->HIGH:Lcom/uc/webview/export/WebSettings$RenderPriority;

    .line 184
    new-instance v0, Lcom/uc/webview/export/WebSettings$RenderPriority;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v4}, Lcom/uc/webview/export/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$RenderPriority;->LOW:Lcom/uc/webview/export/WebSettings$RenderPriority;

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/uc/webview/export/WebSettings$RenderPriority;

    sget-object v1, Lcom/uc/webview/export/WebSettings$RenderPriority;->NORMAL:Lcom/uc/webview/export/WebSettings$RenderPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/webview/export/WebSettings$RenderPriority;->HIGH:Lcom/uc/webview/export/WebSettings$RenderPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uc/webview/export/WebSettings$RenderPriority;->LOW:Lcom/uc/webview/export/WebSettings$RenderPriority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/WebSettings$RenderPriority;->a:[Lcom/uc/webview/export/WebSettings$RenderPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/uc/webview/export/WebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/WebSettings$RenderPriority;

    return-object v0
.end method

.method public static values()[Lcom/uc/webview/export/WebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/uc/webview/export/WebSettings$RenderPriority;->a:[Lcom/uc/webview/export/WebSettings$RenderPriority;

    invoke-virtual {v0}, [Lcom/uc/webview/export/WebSettings$RenderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/WebSettings$RenderPriority;

    return-object v0
.end method
