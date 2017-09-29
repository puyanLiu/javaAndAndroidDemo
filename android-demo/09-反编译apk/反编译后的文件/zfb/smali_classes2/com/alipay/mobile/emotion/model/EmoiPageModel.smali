.class public Lcom/alipay/mobile/emotion/model/EmoiPageModel;
.super Ljava/lang/Object;
.source "EmoiPageModel.java"


# instance fields
.field public basicEmotionsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public cIndex:I

.field public chartletEmotionsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field public faceType:I

.field public packageId:Ljava/lang/String;

.field public pageIndex:I

.field public pageNum:I

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
