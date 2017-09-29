.class public Lcom/alipay/mobile/egg/model/EggDataModel;
.super Ljava/lang/Object;
.source "EggDataModel.java"


# instance fields
.field private mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

.field private mEndTime:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImageResourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/model/EggDataModel$ImageResource;",
            ">;"
        }
    .end annotation
.end field

.field private mKeywords:[Ljava/lang/String;

.field private mStartTime:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mStartTime:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mEndTime:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->TopToBottom:Lcom/alipay/mobile/egg/view/AnimationType;

    iput-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 26
    return-void
.end method


# virtual methods
.method public getAnimationType()Lcom/alipay/mobile/egg/view/AnimationType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/model/EggDataModel$ImageResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mImageResourceList:Ljava/util/List;

    return-object v0
.end method

.method public getKeywords()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mKeywords:[Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimationType(I)V
    .locals 1

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 110
    sget-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->TopToBottom:Lcom/alipay/mobile/egg/view/AnimationType;

    iput-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 113
    :goto_0
    return-void

    .line 98
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->TopToBottom:Lcom/alipay/mobile/egg/view/AnimationType;

    iput-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    goto :goto_0

    .line 101
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->LeftToRight:Lcom/alipay/mobile/egg/view/AnimationType;

    iput-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    goto :goto_0

    .line 104
    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->RightToLeft:Lcom/alipay/mobile/egg/view/AnimationType;

    iput-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    goto :goto_0

    .line 107
    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->BottomToTop:Lcom/alipay/mobile/egg/view/AnimationType;

    iput-object v0, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mAnimationType:Lcom/alipay/mobile/egg/view/AnimationType;

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mEndTime:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setImageResourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/model/EggDataModel$ImageResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mImageResourceList:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setKeywords([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mKeywords:[Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mStartTime:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/egg/model/EggDataModel;->mTitle:Ljava/lang/String;

    .line 57
    return-void
.end method
