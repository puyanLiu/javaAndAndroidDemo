.class public Lcom/alipay/mobile/nebulacore/util/H5AppUtil;
.super Ljava/lang/Object;
.source "H5AppUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "20000067"

    aput-object v1, v0, v3

    const-string/jumbo v1, "20000095"

    aput-object v1, v0, v4

    .line 15
    const-string/jumbo v1, "20000096"

    aput-object v1, v0, v5

    const-string/jumbo v1, "20000097"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "20000098"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "20000099"

    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->a:[Ljava/lang/String;

    .line 16
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "20000101"

    aput-object v1, v0, v3

    const-string/jumbo v1, "20000042"

    aput-object v1, v0, v4

    .line 17
    const-string/jumbo v1, "20000249"

    aput-object v1, v0, v5

    .line 16
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->b:[Ljava/lang/String;

    .line 20
    sput-object v7, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->c:Ljava/util/Set;

    .line 22
    sput-object v7, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->d:Ljava/util/Set;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 46
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-object v0
.end method

.method public static isH5AppId(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 27
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->c:Ljava/util/Set;

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPublicAppId(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->d:Ljava/util/Set;

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static notH5AndPublicAppId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->isH5AppId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->isPublicAppId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
