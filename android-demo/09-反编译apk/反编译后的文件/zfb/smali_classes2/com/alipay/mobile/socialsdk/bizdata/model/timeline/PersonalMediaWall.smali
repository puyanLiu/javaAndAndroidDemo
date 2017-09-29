.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalMediaWall;
.super Ljava/lang/Object;
.source "PersonalMediaWall.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x430746b6874e698bL


# instance fields
.field public infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addImage(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;-><init>()V

    .line 19
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->setType(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->parseExt(II)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->setSrc(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalMediaWall;->infoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalMediaWall;->infoList:Ljava/util/List;

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalMediaWall;->infoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
