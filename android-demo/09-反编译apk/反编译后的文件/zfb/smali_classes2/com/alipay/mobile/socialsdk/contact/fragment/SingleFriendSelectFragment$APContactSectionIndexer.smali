.class public Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;
.super Ljava/lang/Object;
.source "SingleFriendSelectFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

.field private final b:[Ljava/lang/String;

.field private final c:[I

.field private final d:I

.field private e:[I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 548
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 550
    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The sections and counts arrays must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->b:[Ljava/lang/String;

    .line 554
    array-length v1, p3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->c:[I

    .line 555
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->e:[I

    move v1, v0

    .line 558
    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_1

    .line 569
    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->d:I

    return-void

    .line 559
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 560
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->b:[Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v2, v0

    .line 565
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->c:[I

    aput v1, v2, v0

    .line 566
    aget v2, p3, v0

    add-int/2addr v1, v2

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 572
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 585
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->c:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 589
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->d:I

    if-ge p1, v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->c:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 591
    if-ltz v0, :cond_0

    .line 593
    :goto_0
    return v0

    .line 591
    :cond_0
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public getmAllCounts()[I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->e:[I

    return-object v0
.end method
