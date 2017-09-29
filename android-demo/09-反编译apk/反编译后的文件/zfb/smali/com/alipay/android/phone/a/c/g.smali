.class public final Lcom/alipay/android/phone/a/c/g;
.super Ljava/lang/Object;
.source "DefaultItemView.java"


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

    iput-object v0, p0, Lcom/alipay/android/phone/a/c/g;->b:[I

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/a/c/g;->a:Landroid/app/Activity;

    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/g;->b:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/g;->b:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 30
    if-nez p1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/g;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:I

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance v1, Lcom/alipay/android/phone/a/c/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/a/c/h;-><init>(Lcom/alipay/android/phone/a/c/g;)V

    .line 33
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 34
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/h;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 35
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 44
    :goto_0
    :try_start_0
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    .line 48
    :goto_1
    if-eqz v3, :cond_2

    .line 49
    :try_start_1
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/h;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_2
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 70
    :goto_3
    const-string/jumbo v1, "contact"

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->a:I

    .line 75
    :goto_4
    iget-object v2, v0, Lcom/alipay/android/phone/a/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 76
    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, v0, Lcom/alipay/android/phone/a/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->q:I

    iget-object v4, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 78
    iget-object v2, v0, Lcom/alipay/android/phone/a/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->p:I

    iget-object v4, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 79
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a()Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/android/phone/a/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/a/c/g;->b:[I

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;[II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :cond_0
    :goto_5
    return-object p1

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/a/c/h;

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v3, v2

    goto :goto_1

    .line 51
    :cond_2
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/h;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 81
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 58
    :cond_3
    :try_start_3
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 62
    :goto_6
    if-eqz v3, :cond_4

    .line 63
    :try_start_4
    iget-object v2, v0, Lcom/alipay/android/phone/a/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_7
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 59
    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_6

    .line 65
    :cond_4
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 73
    :cond_5
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->b:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4
.end method
