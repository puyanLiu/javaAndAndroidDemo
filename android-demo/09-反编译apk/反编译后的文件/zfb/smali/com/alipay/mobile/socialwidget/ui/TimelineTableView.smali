.class public Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;
.source "TimelineTableView.java"


# instance fields
.field private a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->j:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->u:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 55
    iget v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v1, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnreadStyle:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v1

    iget v2, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 62
    :goto_0
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v1, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnreadStyle:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v1

    iget v2, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnread:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 81
    :goto_1
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v1, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnreadStyle:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v1

    iget v2, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnread:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 74
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightIcon:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 75
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_1
.end method
