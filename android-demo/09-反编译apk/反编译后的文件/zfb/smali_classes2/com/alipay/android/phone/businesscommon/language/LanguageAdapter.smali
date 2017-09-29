.class public Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private final e:I

.field private final f:Lcom/alipay/mobile/commonui/widget/APButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/alipay/mobile/commonui/widget/APButton;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/alipay/mobile/commonui/widget/APButton;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->d:I

    iput p3, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->e:I

    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->d:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->c:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->e:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->d:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;)Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->d:I

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/android/phone/businesscommon/language/R$layout;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/android/phone/businesscommon/language/b;

    invoke-direct {v1}, Lcom/alipay/android/phone/businesscommon/language/b;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/alipay/android/phone/businesscommon/language/R$id;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->a:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/phone/businesscommon/language/R$id;->e:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->b:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/android/phone/businesscommon/language/R$id;->b:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->d:Landroid/widget/RelativeLayout;

    sget v0, Lcom/alipay/android/phone/businesscommon/language/R$id;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->c:Landroid/widget/ImageView;

    :goto_0
    iget-object v2, v1, Lcom/alipay/android/phone/businesscommon/language/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_2

    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->d:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->table_square_top_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->c:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->d:I

    if-ne p1, v0, :cond_0

    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->c:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->d:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alipay/android/phone/businesscommon/language/a;

    invoke-direct {v2, p0, p1, v1}, Lcom/alipay/android/phone/businesscommon/language/a;-><init>(Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;ILcom/alipay/android/phone/businesscommon/language/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/language/b;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->d:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->table_square_bottom_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/language/b;->d:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->table_square_middle_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
