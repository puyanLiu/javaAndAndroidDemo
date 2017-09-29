.class public final Lcom/alipay/android/phone/a/c/o;
.super Ljava/lang/Object;
.source "MessageBoxItemView.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/android/phone/a/c/o;->b:[I

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/a/c/o;->a:Landroid/app/Activity;

    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/o;->b:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/o;->b:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 31
    if-nez p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/o;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->l:I

    invoke-virtual {v0, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance v1, Lcom/alipay/android/phone/a/c/p;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/a/c/p;-><init>(Lcom/alipay/android/phone/a/c/o;)V

    .line 34
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/p;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 35
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/p;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 36
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->I:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/p;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 42
    :goto_0
    const/4 v2, 0x0

    .line 44
    :try_start_0
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :goto_1
    if-eqz v1, :cond_1

    .line 49
    iget-object v2, v0, Lcom/alipay/android/phone/a/c/p;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_2
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->timestamp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/p;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/p;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 59
    :goto_3
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/p;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->b:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 60
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/p;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->q:I

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 62
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/p;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->p:I

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a()Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/android/phone/a/c/p;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/a/c/o;->b:[I

    sget v5, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->b:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;[II)V

    .line 64
    iget-object v0, v0, Lcom/alipay/android/phone/a/c/p;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 68
    :goto_4
    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/a/c/p;

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_1

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/p;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 57
    :cond_2
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/p;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 66
    :cond_3
    iget-object v0, v0, Lcom/alipay/android/phone/a/c/p;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_4
.end method
