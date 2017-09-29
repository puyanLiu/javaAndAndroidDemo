.class public Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;
.super Ljava/lang/Object;
.source "EmotionTabBarItemModel.java"


# static fields
.field public static TYPE_COUNT:I = 0x0

.field public static final VIEW_TYPE_CHANGEPAGE:I = 0x0

.field public static final VIEW_TYPE_GOTO:I = 0x1


# instance fields
.field public gotoUrl:Ljava/lang/String;

.field public internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

.field public pageIndex:I

.field public viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x5

    sput v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->TYPE_COUNT:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeEmotionTabModel(Lcom/alipay/mobile/emotion/model/EmoiPackageModel;I)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;-><init>()V

    .line 24
    iput-object p0, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 25
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->viewType:I

    .line 26
    iput p1, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->pageIndex:I

    .line 27
    return-object v0
.end method

.method public static makeEmotionTabModelList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    return-object v2

    .line 33
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 34
    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->makeEmotionTabModel(Lcom/alipay/mobile/emotion/model/EmoiPackageModel;I)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method
