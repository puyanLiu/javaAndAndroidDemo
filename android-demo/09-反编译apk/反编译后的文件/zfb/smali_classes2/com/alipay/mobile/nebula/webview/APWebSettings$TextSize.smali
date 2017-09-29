.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field public static final enum SMALLEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

.field private static final synthetic b:[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string/jumbo v1, "SMALLEST"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string/jumbo v1, "SMALLER"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 43
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string/jumbo v1, "NORMAL"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string/jumbo v1, "LARGER"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    const-string/jumbo v1, "LARGEST"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->b:[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->a:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->b:[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
