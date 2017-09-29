.class public final Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;
.super Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
.source "HomeWidgetGroupLayout_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# instance fields
.field private d:Z

.field private final e:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->d:Z

    .line 31
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 35
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->d:Z

    .line 31
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 40
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->d:Z

    .line 31
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 45
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->a()V

    .line 46
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 73
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->processShowGuide()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->onFinishInflate()V

    .line 51
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->onFinishInflate()V

    .line 78
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->onFinishInflate()V

    .line 84
    return-object v0
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->d:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->d:Z

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->onFinishInflate()V

    .line 68
    return-void
.end method

.method public final processShowGuide()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/alipay/android/phone/home/widget/b;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/android/phone/home/widget/b;-><init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 101
    return-void
.end method
