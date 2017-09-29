.class public Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "KeyBoardRelativeLayout.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/alipay/mobile/pubsvc/ui/view/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a:Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a:Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a()V

    .line 23
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/view/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/pubsvc/ui/view/a;-><init>(Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/pubsvc/ui/view/b;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->c:Lcom/alipay/mobile/pubsvc/ui/view/b;

    .line 87
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 91
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onLayout(ZIIII)V

    .line 92
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/16 v3, 0x96

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->c:Lcom/alipay/mobile/pubsvc/ui/view/b;

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 54
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    if-eqz v2, :cond_1

    .line 55
    if-le v1, v0, :cond_3

    .line 56
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    if-gt v2, v1, :cond_2

    .line 57
    iput v1, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    .line 64
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->c:Lcom/alipay/mobile/pubsvc/ui/view/b;

    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    sub-int v0, v2, v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/pubsvc/ui/view/b;->onKeyBoardShown(I)V

    .line 82
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onMeasure(II)V

    .line 83
    return-void

    .line 59
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    sub-int/2addr v2, v1

    if-ge v2, v3, :cond_0

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "keyBoardRelativeLayout_keyborad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5c4f\u5e55\u5fae\u8c03,default:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " oldSpec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput v1, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    goto :goto_0

    .line 65
    :cond_3
    if-ge v1, v0, :cond_1

    .line 66
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    if-lt v0, v1, :cond_4

    .line 67
    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->c:Lcom/alipay/mobile/pubsvc/ui/view/b;

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/view/b;->onKeyBoardHidden()V

    goto :goto_1

    .line 70
    :cond_4
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    sub-int/2addr v1, v0

    if-ge v1, v3, :cond_5

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "keyBoardRelativeLayout_keyborad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5c4f\u5e55\u5fae\u8c03,default:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newSpec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->c:Lcom/alipay/mobile/pubsvc/ui/view/b;

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/view/b;->onKeyBoardHidden()V

    goto :goto_1

    .line 75
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->c:Lcom/alipay/mobile/pubsvc/ui/view/b;

    iget v2, p0, Lcom/alipay/mobile/pubsvc/ui/view/KeyBoardRelativeLayout;->b:I

    sub-int v0, v2, v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/pubsvc/ui/view/b;->onKeyBoardShown(I)V

    goto :goto_1
.end method
