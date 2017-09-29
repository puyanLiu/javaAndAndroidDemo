.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;
.super Ljava/lang/Object;
.source "MediaListInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73e33a937335d6ceL


# instance fields
.field private ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private src:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method public getExt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    return-object v0
.end method

.method public getSize()[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    const-string/jumbo v3, "w"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 69
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    const-string/jumbo v3, "h"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    aput v4, v1, v4

    .line 72
    aput v4, v1, v5

    goto :goto_0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public parseExt(II)V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    const-string/jumbo v1, "w"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    const-string/jumbo v1, "h"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->setExt(Ljava/util/Map;)V

    .line 62
    return-void
.end method

.method public parseMediaInfoExt()Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    const-string/jumbo v2, "w"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    const-string/jumbo v3, "h"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 82
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;

    invoke-direct {v0, v4, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;-><init>(II)V

    goto :goto_0
.end method

.method public setExt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->ext:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->src:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->type:Ljava/lang/String;

    .line 39
    return-void
.end method
