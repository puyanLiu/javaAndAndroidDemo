.class public abstract Lcom/alipay/mobile/personalbase/service/FavoriteService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "FavoriteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/personalbase/service/FavoriteService$Info;,
        Lcom/alipay/mobile/personalbase/service/FavoriteService$OnAddFavoriteCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addToFavorite(Lcom/alipay/mobile/personalbase/service/FavoriteService$OnAddFavoriteCallback;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/personalbase/service/FavoriteService$OnAddFavoriteCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract removeFavoriteCallback()V
.end method
