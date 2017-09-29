.class public abstract Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected imageLoaderKey:Ljava/lang/String;

.field protected isFromFlow:Z

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mCloumnNum:I

.field protected mContext:Landroid/content/Context;

.field private mHeightSpace:I

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mView:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

.field private mWidthSpace:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xb4

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput v1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mBlockWidth:I

    .line 24
    iput v1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mBlockHeight:I

    .line 27
    iput v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mWidthSpace:I

    .line 28
    iput v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mHeightSpace:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mCloumnNum:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/16 v1, 0xb4

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput v1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mBlockWidth:I

    .line 24
    iput v1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mBlockHeight:I

    .line 27
    iput v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mWidthSpace:I

    .line 28
    iput v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mHeightSpace:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mCloumnNum:I

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public displayBlocks()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mView:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Apater has not been atatch to any BlockListView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mView:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->onDataListChange()V

    .line 66
    return-void
.end method

.method public getBlockHeight()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mBlockHeight:I

    return v0
.end method

.method public getBlockWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mBlockWidth:I

    return v0
.end method

.method public getCloumnNum()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mCloumnNum:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mWidthSpace:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mHeightSpace:I

    return v0
.end method

.method public registerView(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mView:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

    .line 49
    return-void
.end method

.method public setBlockSize(II)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mBlockWidth:I

    .line 91
    iput p2, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mBlockHeight:I

    .line 92
    return-void
.end method

.method public setColumnNum(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mCloumnNum:I

    .line 104
    return-void
.end method

.method public setImageLoaderKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->imageLoaderKey:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setNeedPut(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->isFromFlow:Z

    .line 116
    return-void
.end method

.method public setSpace(II)V
    .locals 0

    .prologue
    .line 73
    if-lez p1, :cond_0

    .line 74
    iput p1, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mWidthSpace:I

    .line 76
    :cond_0
    if-lez p2, :cond_1

    .line 77
    iput p2, p0, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->mHeightSpace:I

    .line 79
    :cond_1
    return-void
.end method
