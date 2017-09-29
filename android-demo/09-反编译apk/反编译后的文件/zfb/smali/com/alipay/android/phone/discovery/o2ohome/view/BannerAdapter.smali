.class public abstract Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerAdapter.java"


# static fields
.field public static final SCALE_FACTOR:I = 0x190

.field private static final pageSize:I = 0x8


# instance fields
.field private realCount:I

.field private scale:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract createView(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->scale:Z

    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    rem-int/2addr p2, v0

    .line 54
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->destroyView(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public abstract destroyView(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end method

.method public final getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    .line 38
    iget v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    if-le v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->scale:Z

    .line 39
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->scale:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    mul-int/lit16 v0, v0, 0x190

    .line 40
    :goto_1
    return v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    goto :goto_1
.end method

.method public final getPageSize()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x8

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->scale:Z

    if-eqz v0, :cond_0

    .line 45
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    rem-int/2addr p2, v0

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract realCount()I
.end method
