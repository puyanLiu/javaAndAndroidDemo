.class public Lcom/alipay/mobile/nebula/webview/Version$Minor;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(II)I
    .locals 2

    .prologue
    .line 46
    invoke-static {p1}, Lcom/alipay/mobile/nebula/webview/Version;->getMinor(I)I

    move-result v0

    .line 47
    invoke-static {p2}, Lcom/alipay/mobile/nebula/webview/Version;->getMinor(I)I

    move-result v1

    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    .line 50
    :cond_0
    if-le v0, v1, :cond_1

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
