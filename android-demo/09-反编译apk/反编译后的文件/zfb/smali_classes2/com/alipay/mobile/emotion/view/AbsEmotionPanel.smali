.class public abstract Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;
.source "AbsEmotionPanel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/commonui/widget/APLinearLayout;"
    }
.end annotation


# static fields
.field private static mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;


# instance fields
.field private mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

.field protected mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$1;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getChangeBGHandler()Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    return-object v0
.end method

.method protected abstract getEmotionItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract getGridItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method protected abstract getGridItemView(IIILandroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/view/View;",
            "TT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method protected abstract getGridViewColumnHeight()I
.end method

.method protected abstract getGridViewColumnWidth()I
.end method

.method protected abstract getGridViewMargin()I
.end method

.method protected abstract getGridViewNumColumns()I
.end method

.method protected getGridViewVerticalSpacing()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getInterceptableView()Lcom/alipay/mobile/emotion/widget/Interceptable;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

    return-object v0
.end method

.method protected abstract getOnItemPressingListener()Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;
.end method

.method protected abstract hasLongPressing()Z
.end method

.method protected initEmotionGridView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 89
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_gird:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setInterceptableView(Lcom/alipay/mobile/emotion/widget/Interceptable;)V

    .line 91
    new-instance v0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getGridViewColumnWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getGridViewColumnHeight()I

    move-result v3

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getGridViewNumColumns()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getGridViewVerticalSpacing()I

    move-result v5

    move-object v1, p0

    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;-><init>(Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;IIII)V

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getEmotionItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->setList(Ljava/util/List;)V

    .line 94
    invoke-virtual {v6, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setAdapter(Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getGridItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getOnItemPressingListener()Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setOnItemPressingListener(Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->hasLongPressing()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->hasItemLongPresssing(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getChangeBGHandler()Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setChangeBGHandler(Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;)V

    .line 99
    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_panel:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->initEmotionGridView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public setInterceptableView(Lcom/alipay/mobile/emotion/widget/Interceptable;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

    .line 174
    return-void
.end method

.method public setOnClickEmotionListener(Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    .line 178
    return-void
.end method
