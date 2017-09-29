.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field public static final enum ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field public static final enum ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

.field private static final synthetic a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string/jumbo v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 127
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string/jumbo v1, "ON_DEMAND"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 128
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
