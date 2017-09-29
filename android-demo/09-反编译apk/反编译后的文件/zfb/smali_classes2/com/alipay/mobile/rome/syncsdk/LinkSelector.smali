.class public Lcom/alipay/mobile/rome/syncsdk/LinkSelector;
.super Ljava/lang/Object;
.source "LinkSelector.java"


# static fields
.field public static final LINK_TYPE_MMTP:Ljava/lang/String; = "mmtp"

.field public static final LINK_TYPE_SSL:Ljava/lang/String; = "ssl"

.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "ssl"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->b:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->isMmtpSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "mmtp"

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->b:Z

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    .line 42
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->isMmtpSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const-string/jumbo v0, "mmtp"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    .line 40
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->b:Z

    .line 42
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo v0, "ssl"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public static setReinitFlag()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->b:Z

    .line 64
    return-void
.end method
