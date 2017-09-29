.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

.field private b:I

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 771
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    .line 774
    iput-wide v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    .line 776
    iput-wide v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->d:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 781
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 783
    iget-wide v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 784
    iput v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    .line 786
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    .line 787
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    .line 799
    :cond_1
    :goto_0
    return v4

    .line 789
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->d:J

    .line 792
    iget-wide v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->d:J

    iget-wide v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 793
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(ILcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;)V

    .line 795
    :cond_3
    iput v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    iput-wide v5, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    iput-wide v5, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->d:J

    goto :goto_0
.end method
