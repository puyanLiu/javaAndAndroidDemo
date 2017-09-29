.class public final enum Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;
.super Ljava/lang/Enum;
.source "ConfigSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET_ALL:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

.field public static final enum GET_CONF_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

.field public static final enum GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

.field private static final synthetic b:[Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    const-string/jumbo v1, "GET_ALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    .line 8
    new-instance v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    const-string/jumbo v1, "GET_IPLIST_ONLY"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    .line 9
    new-instance v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    const-string/jumbo v1, "GET_CONF_ONLY"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_CONF_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    sget-object v1, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_CONF_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->b:[Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->b:[Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    return-object v0
.end method
