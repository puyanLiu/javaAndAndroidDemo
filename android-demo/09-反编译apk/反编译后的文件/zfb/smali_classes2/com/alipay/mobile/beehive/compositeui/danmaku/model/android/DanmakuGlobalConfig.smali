.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
.super Ljava/lang/Object;
.source "DanmakuGlobalConfig.java"


# static fields
.field public static final DANMAKU_STYLE_DEFAULT:I = -0x1

.field public static final DANMAKU_STYLE_NONE:I = 0x0

.field public static final DANMAKU_STYLE_PROJECTION:I = 0x3

.field public static final DANMAKU_STYLE_SHADOW:I = 0x1

.field public static final DANMAKU_STYLE_STROKEN:I = 0x2

.field public static DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;


# instance fields
.field public FBDanmakuVisibility:Z

.field public FTDanmakuVisibility:Z

.field public L2RDanmakuVisibility:Z

.field public R2LDanmakuVisibility:Z

.field public SecialDanmakuVisibility:Z

.field public feedingInterval:I

.field public isTextScaled:Z

.field public isTranslucent:Z

.field private mBlockGuestDanmaku:Z

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$ConfigChangedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mColorValueWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDuplicateMergingEnable:Z

.field mFilterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFont:Landroid/graphics/Typeface;

.field mUserHashBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUserIdBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public maxBufferCapacity:I

.field public maxOffset:I

.field public maximumNumsInScreen:I

.field public minOffset:I

.field public myStartTimeDelay:I

.field public numDisplayItemsEachRun:I

.field public refreshRateMS:I

.field public scaleTextSize:F

.field public scrollSpeedFactor:F

.field public shadowRadius:I

.field public shadowType:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$BorderType;

.field public startTimeDelay:I

.field public transparency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFont:Landroid/graphics/Typeface;

    .line 41
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->transparency:I

    .line 43
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->isTranslucent:Z

    .line 45
    iput v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    .line 50
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->isTextScaled:Z

    .line 55
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->FTDanmakuVisibility:Z

    .line 57
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->FBDanmakuVisibility:Z

    .line 59
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->L2RDanmakuVisibility:Z

    .line 61
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->R2LDanmakuVisibility:Z

    .line 63
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->SecialDanmakuVisibility:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maximumNumsInScreen:I

    .line 75
    iput v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scrollSpeedFactor:F

    .line 81
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->refreshRateMS:I

    .line 93
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxBufferCapacity:I

    .line 98
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->feedingInterval:I

    .line 103
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxOffset:I

    .line 108
    const/16 v0, -0x5dc

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->minOffset:I

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->numDisplayItemsEachRun:I

    .line 118
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->startTimeDelay:I

    .line 123
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->myStartTimeDelay:I

    .line 131
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$BorderType;->SHADOW:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$BorderType;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->shadowType:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$BorderType;

    .line 133
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->shadowRadius:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mColorValueWhiteList:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    .line 146
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mBlockGuestDanmaku:Z

    .line 148
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mDuplicateMergingEnable:Z

    .line 18
    return-void
.end method

.method private varargs notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 640
    :cond_1
    return-void

    .line 633
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 634
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$ConfigChangedCallback;

    .line 635
    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$ConfigChangedCallback;->onDanmakuConfigChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDanmakuVisible(ZI)V
    .locals 2

    .prologue
    .line 216
    if-eqz p1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setFilterData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-result-object v0

    .line 212
    invoke-interface {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;->setData(Ljava/lang/Object;)V

    .line 213
    return-void
.end method


# virtual methods
.method public varargs addUserHashBlackList([Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 456
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-object p0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 460
    const-string/jumbo v0, "1015_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs addUserIdBlackList([Ljava/lang/Integer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 506
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-object p0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 510
    const-string/jumbo v0, "1014_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 511
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public blockGuestDanmaku(Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mBlockGuestDanmaku:Z

    if-eq v0, p1, :cond_0

    .line 526
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mBlockGuestDanmaku:Z

    .line 527
    if-eqz p1, :cond_1

    .line 528
    const-string/jumbo v0, "1016_Filter"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    :goto_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->BLOCK_GUEST_DANMAKU:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 534
    :cond_0
    return-object p0

    .line 530
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    const-string/jumbo v1, "1016_Filter"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getColorValueWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mColorValueWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getFBDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->FBDanmakuVisibility:Z

    return v0
.end method

.method public getFTDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->FTDanmakuVisibility:Z

    return v0
.end method

.method public getL2RDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->L2RDanmakuVisibility:Z

    return v0
.end method

.method public getR2LDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->R2LDanmakuVisibility:Z

    return v0
.end method

.method public getSecialDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->SecialDanmakuVisibility:Z

    return v0
.end method

.method public getUserHashBlackList()Ljava/util/List;
    .locals 1
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
    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getUserIdBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    return-object v0
.end method

.method public isDuplicateMergingEnabled()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mDuplicateMergingEnable:Z

    return v0
.end method

.method public registerConfigChangedCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$ConfigChangedCallback;)V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :goto_0
    return-void

    .line 611
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 612
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public varargs removeUserHashBlackList([Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 439
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-object p0

    .line 442
    :cond_1
    array-length v2, p1

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_2

    .line 445
    const-string/jumbo v0, "1015_Filter"

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    aput-object v3, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    :cond_2
    aget-object v3, p1, v0

    .line 443
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public varargs removeUserIdBlackList([Ljava/lang/Integer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 489
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object p0

    .line 492
    :cond_1
    array-length v2, p1

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_2

    .line 495
    const-string/jumbo v0, "1014_Filter"

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    aput-object v3, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_2
    aget-object v3, p1, v0

    .line 493
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public varargs setColorValueWhiteList([Ljava/lang/Integer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mColorValueWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 406
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    .line 407
    const-string/jumbo v1, "1013_Filter"

    .line 406
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 412
    :goto_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->COLOR_VALUE_WHITE_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mColorValueWhiteList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 413
    return-object p0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mColorValueWhiteList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 410
    const-string/jumbo v0, "1013_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mColorValueWhiteList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDanmakuBold(Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 393
    invoke-static {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->setFakeBoldText(Z)V

    .line 394
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DANMAKU_BOLD:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 395
    return-object p0
.end method

.method public varargs setDanmakuStyle(I[F)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 382
    :goto_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DANMAKU_STYLE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aget v2, p2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 383
    return-object p0

    .line 358
    :pswitch_0
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 359
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 360
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    goto :goto_0

    .line 363
    :pswitch_1
    sput-boolean v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 364
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 365
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    .line 366
    aget v0, p2, v3

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->setShadowRadius(F)V

    goto :goto_0

    .line 370
    :pswitch_2
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 371
    sput-boolean v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 372
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    .line 373
    aget v0, p2, v3

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->setPaintStorkeWidth(F)V

    goto :goto_0

    .line 376
    :pswitch_3
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    .line 377
    sput-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    .line 378
    sput-boolean v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    .line 379
    aget v0, p2, v3

    aget v1, p2, v4

    aget v2, p2, v5

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->setProjectionConfig(FFI)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDanmakuTransparency(F)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 167
    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->transparency:I

    if-eq v0, v3, :cond_0

    .line 168
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->transparency:I

    .line 169
    sget v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->isTranslucent:Z

    .line 170
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->TRANSPARENCY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 172
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 169
    goto :goto_0
.end method

.method public setDuplicateMergingEnabled(Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mDuplicateMergingEnable:Z

    if-eq v0, p1, :cond_0

    .line 560
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mDuplicateMergingEnable:Z

    .line 561
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 563
    :cond_0
    return-object p0
.end method

.method public setFBDanmakuVisibility(Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 236
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setDanmakuVisible(ZI)V

    .line 237
    const-string/jumbo v0, "1010_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->FBDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 239
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->FBDanmakuVisibility:Z

    .line 240
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->FB_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 242
    :cond_0
    return-object p0
.end method

.method public setFTDanmakuVisibility(Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setDanmakuVisible(ZI)V

    .line 201
    const-string/jumbo v0, "1010_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->FTDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 203
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->FTDanmakuVisibility:Z

    .line 204
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->FT_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 206
    :cond_0
    return-object p0
.end method

.method public setFeedingInterval(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 0

    .prologue
    .line 572
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->feedingInterval:I

    .line 573
    return-object p0
.end method

.method public setL2RDanmakuVisibility(Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 258
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setDanmakuVisible(ZI)V

    .line 259
    const-string/jumbo v0, "1010_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->L2RDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 261
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->L2RDanmakuVisibility:Z

    .line 262
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->L2R_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 264
    :cond_0
    return-object p0
.end method

.method public setMaxBufferCapacity(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 0

    .prologue
    .line 567
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxBufferCapacity:I

    .line 568
    return-object p0
.end method

.method public setMaxTimeOffset(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 1

    .prologue
    .line 577
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxOffset:I

    .line 578
    neg-int v0, p1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->minOffset:I

    .line 579
    return-object p0
.end method

.method public setMaximumVisibleSizeInScreen(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 318
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maximumNumsInScreen:I

    .line 320
    if-nez p1, :cond_0

    .line 321
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    .line 322
    const-string/jumbo v1, "1011_Filter"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    const-string/jumbo v1, "1012_Filter"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 338
    :goto_0
    return-object p0

    .line 328
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 329
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    .line 330
    const-string/jumbo v1, "1011_Filter"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    .line 332
    const-string/jumbo v1, "1012_Filter"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 333
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :cond_1
    const-string/jumbo v0, "1011_Filter"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setMyStartTimeDelay(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 0

    .prologue
    .line 593
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->myStartTimeDelay:I

    .line 594
    return-object p0
.end method

.method public setNumDisplayItemsEachRun(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 0

    .prologue
    .line 583
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->numDisplayItemsEachRun:I

    .line 584
    return-object p0
.end method

.method public setR2LDanmakuVisibility(Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 280
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setDanmakuVisible(ZI)V

    .line 281
    const-string/jumbo v0, "1010_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->R2LDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 283
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->R2LDanmakuVisibility:Z

    .line 284
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->R2L_DANMAKU_VISIBILIY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 286
    :cond_0
    return-object p0
.end method

.method public setScaleTextSize(F)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    .line 177
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    .line 178
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->clearTextHeightCache()V

    .line 179
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 180
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 181
    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCALE_TEXTSIZE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->isTextScaled:Z

    .line 184
    return-object p0

    :cond_1
    move v0, v1

    .line 183
    goto :goto_0
.end method

.method public setScrollSpeedFactor(F)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 543
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scrollSpeedFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 544
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scrollSpeedFactor:F

    .line 545
    invoke-static {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateDurationFactor(F)V

    .line 546
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 547
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 548
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 550
    :cond_0
    return-object p0
.end method

.method public setSpecialDanmakuVisibility(Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 302
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setDanmakuVisible(ZI)V

    .line 303
    const-string/jumbo v0, "1010_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->SecialDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 305
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->SecialDanmakuVisibility:Z

    .line 306
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SPECIAL_DANMAKU_VISIBILITY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 308
    :cond_0
    return-object p0
.end method

.method public setStartTimeDelay(I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 0

    .prologue
    .line 588
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->startTimeDelay:I

    .line 589
    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFont:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mFont:Landroid/graphics/Typeface;

    .line 158
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->clearTextHeightCache()V

    .line 159
    invoke-static {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 160
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->TYPEFACE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    return-object p0
.end method

.method public varargs setUserHashBlackList([Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 428
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "1015_Filter"

    .line 428
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 434
    :goto_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 435
    return-object p0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 432
    const-string/jumbo v0, "1015_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs setUserIdBlackList([Ljava/lang/Integer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 477
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 478
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    .line 479
    const-string/jumbo v1, "1014_Filter"

    .line 478
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 484
    :goto_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->notifyConfigureChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 485
    return-object p0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 482
    const-string/jumbo v0, "1014_Filter"

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DanmakuGlobalConfig[maxBufferCapacity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxBufferCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 645
    const-string/jumbo v1, ", feedingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->feedingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    const-string/jumbo v1, ", maxOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 647
    const-string/jumbo v1, ", minOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->minOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    const-string/jumbo v1, ", numDisplayItemsEachRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->numDisplayItemsEachRun:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 649
    const-string/jumbo v1, ", startTimeDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->startTimeDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 650
    const-string/jumbo v1, ", myStartTimeDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->myStartTimeDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 651
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterConfigChangedCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$ConfigChangedCallback;)V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 624
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
