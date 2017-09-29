.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HIGH:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

.field public static final enum LOW:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

.field public static final enum NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

.field private static final synthetic a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    .line 112
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->HIGH:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    .line 113
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->LOW:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->HIGH:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->LOW:Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;->a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebula/webview/APWebSettings$RenderPriority;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
