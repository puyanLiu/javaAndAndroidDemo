.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NARROW_COLUMNS:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TEXT_AUTOSIZING:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

.field private static final synthetic a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 14
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    const-string/jumbo v1, "SINGLE_COLUMN"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    .line 18
    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 19
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    const-string/jumbo v1, "NARROW_COLUMNS"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 24
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    const-string/jumbo v1, "TEXT_AUTOSIZING"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->a:[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
