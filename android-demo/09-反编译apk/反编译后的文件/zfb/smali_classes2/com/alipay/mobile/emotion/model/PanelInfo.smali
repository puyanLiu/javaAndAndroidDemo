.class public Lcom/alipay/mobile/emotion/model/PanelInfo;
.super Ljava/lang/Object;
.source "PanelInfo.java"


# instance fields
.field public mGridViewColumnHeight:I

.field public mGridViewColumnWidth:I

.field public mGridViewNumColumns:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnWidth:I

    .line 6
    iput v0, p0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    .line 7
    iput v0, p0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewNumColumns:I

    .line 4
    return-void
.end method
