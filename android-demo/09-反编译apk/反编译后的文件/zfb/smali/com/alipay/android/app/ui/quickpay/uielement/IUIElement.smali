.class public abstract Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;
.implements Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/android/app/sys/IDispose;",
        "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;"
    }
.end annotation


# static fields
.field private static final L:Ljava/util/regex/Pattern;

.field protected static t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Z

.field protected C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

.field protected final D:Ljava/lang/String;

.field protected final E:Ljava/lang/String;

.field protected final F:Ljava/lang/String;

.field protected final G:Ljava/lang/String;

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field private g:Ljava/lang/String;

.field private h:[F

.field private i:[F

.field private j:Z

.field protected k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

.field protected l:Z

.field protected m:Z

.field protected n:Lcom/alipay/android/app/json/JSONObject;

.field protected o:F

.field protected p:I

.field protected q:I

.field protected r:Z

.field protected s:Z

.field protected u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field protected v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    .line 95
    const-string/jumbo v0, "(\\{\\{(.+?)\\}\\})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->L:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a:Z

    .line 51
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->l:Z

    .line 52
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->m:Z

    .line 55
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->e:Z

    .line 56
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    .line 57
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->o:F

    .line 80
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->r:Z

    .line 82
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->s:Z

    .line 675
    const-string/jumbo v0, "onclick"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->D:Ljava/lang/String;

    .line 676
    const-string/jumbo v0, "onchange"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->E:Ljava/lang/String;

    .line 677
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->F:Ljava/lang/String;

    .line 678
    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->G:Ljava/lang/String;

    .line 248
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B:Z

    .line 249
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 114
    const-string/jumbo v1, ""

    .line 116
    :try_start_0
    const-string/jumbo v3, "\\."

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 117
    array-length v5, v4

    .line 118
    const/4 v3, 0x1

    if-ne v5, v3, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-object v0

    .line 123
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    move v8, v0

    move-object v0, v3

    move v3, v8

    .line 124
    :goto_1
    add-int/lit8 v6, v5, -0x1

    if-ge v3, v6, :cond_4

    .line 125
    aget-object v6, v4, v3

    .line 126
    instance-of v7, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v7, :cond_2

    .line 127
    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    :cond_1
    :goto_2
    if-eqz v0, :cond_4

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    :cond_2
    instance-of v7, v0, Lcom/alipay/android/app/json/JSONArray;

    if-eqz v7, :cond_1

    .line 129
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 130
    check-cast v0, Lcom/alipay/android/app/json/JSONArray;

    .line 131
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 132
    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 134
    goto :goto_2

    .line 141
    :cond_4
    if-eqz v0, :cond_5

    .line 142
    add-int/lit8 v3, v5, -0x1

    aget-object v3, v4, v3

    .line 144
    instance-of v4, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v4, :cond_6

    .line 145
    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    .line 147
    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c:Z

    return v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    return-object v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    .line 501
    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 504
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public final H()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 520
    const-string/jumbo v1, "hidden"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    const-string/jumbo v1, "collapse"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final I()I
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    .line 563
    if-nez v0, :cond_0

    .line 564
    const/4 v0, 0x4

    .line 566
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->z:Ljava/lang/String;

    return-object v0
.end method

.method protected L()V
    .locals 2

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    .line 640
    if-nez v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    instance-of v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    if-nez v1, :cond_0

    .line 648
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Landroid/view/View;)V

    .line 650
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v1, :cond_0

    .line 651
    :cond_2
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/c;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    .line 666
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Landroid/view/View$OnClickListener;)V

    .line 667
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    .line 550
    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 9

    .prologue
    .line 766
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 768
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->s:Z

    if-eqz v0, :cond_f

    .line 769
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    add-float v4, v0, v1

    .line 772
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    add-float v5, v0, v1

    .line 773
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    if-nez v0, :cond_a

    .line 776
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 777
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v2

    .line 778
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    .line 791
    :cond_0
    :goto_0
    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v0, v7

    add-float/2addr v6, v7

    .line 792
    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v0, v0, v8

    add-float/2addr v0, v7

    .line 793
    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 794
    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 795
    if-gtz v2, :cond_1

    .line 796
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v2

    .line 798
    :cond_1
    int-to-float v2, v2

    sub-float/2addr v2, v6

    float-to-int v2, v2

    .line 799
    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v7, p1, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    .line 806
    :cond_2
    :goto_1
    iget v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 807
    int-to-float v2, v2

    sub-float/2addr v2, v6

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    .line 810
    :cond_3
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 811
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 812
    if-gtz v1, :cond_4

    .line 813
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    .line 815
    :cond_4
    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v1, v1

    .line 816
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    .line 828
    :cond_5
    :goto_2
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 829
    int-to-float v1, v1

    sub-float v0, v1, v0

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    .line 831
    :cond_6
    if-eqz v3, :cond_7

    .line 832
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 833
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 864
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c(Ljava/lang/String;)V

    .line 865
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 866
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->H:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-int v4, v4

    instance-of v5, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_14

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    :cond_9
    :goto_4
    return-void

    .line 780
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    .line 781
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    iget v2, v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    .line 782
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->r()I

    move-result v1

    .line 783
    const/4 v6, -0x2

    if-ne v2, v6, :cond_b

    .line 784
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v2

    .line 787
    :cond_b
    const/4 v6, -0x2

    if-ne v1, v6, :cond_0

    .line 788
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    goto/16 :goto_0

    .line 801
    :cond_c
    const/4 v7, -0x2

    if-eq v2, v7, :cond_2

    .line 802
    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v7, p1, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v7

    iput v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    goto/16 :goto_1

    .line 817
    :cond_d
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 818
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v4, "\\*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 819
    if-eqz v2, :cond_5

    array-length v4, v2

    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    .line 820
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v2, v6

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    invoke-static {v2, p1, v4}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_2

    .line 823
    :cond_e
    const/4 v2, -0x2

    if-eq v1, v2, :cond_5

    .line 824
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_2

    .line 836
    :cond_f
    if-eqz v3, :cond_7

    .line 837
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 838
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->r:Z

    if-eqz v0, :cond_12

    .line 839
    if-eqz p3, :cond_11

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    .line 842
    :goto_5
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    .line 848
    :goto_6
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 850
    :cond_10
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 851
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 852
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_7

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 854
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    invoke-static {v0, p1, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_3

    .line 839
    :cond_11
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    goto :goto_5

    .line 845
    :cond_12
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    invoke-static {v0, p1, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;[F)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    goto :goto_6

    .line 858
    :cond_13
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    .line 859
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3

    .line 866
    :cond_14
    instance-of v5, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_15

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_15
    instance-of v5, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_9

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 776
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a(Landroid/view/View$OnClickListener;)V

    .line 612
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/b;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 631
    :cond_0
    return-void
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, -0x2

    .line 260
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->e:Z

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->e:Z

    .line 265
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    .line 266
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    .line 267
    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j:Z

    .line 268
    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->H:Z

    .line 269
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->s:Z

    if-eqz v0, :cond_13

    .line 270
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    .line 271
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    .line 282
    :goto_1
    if-eqz p1, :cond_0

    .line 286
    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j:Z

    .line 290
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    .line 293
    :cond_2
    const-string/jumbo v0, "margin"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const-string/jumbo v0, "margin"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->g:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 296
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->H:Z

    .line 297
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->e(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    .line 301
    :cond_3
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    .line 305
    :cond_4
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    .line 309
    :cond_5
    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string/jumbo v1, "cell"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a:Z

    .line 314
    :cond_6
    const-string/jumbo v0, "align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 315
    const-string/jumbo v0, "align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "float"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "screen_bottom"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "screen_bottom_center"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 321
    :cond_7
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c:Z

    .line 325
    :cond_8
    const-string/jumbo v0, "vertical-align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 326
    const-string/jumbo v0, "vertical-align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->d:Ljava/lang/String;

    .line 330
    :cond_9
    const-string/jumbo v0, "_class"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 331
    const-string/jumbo v0, "_class"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->x:Ljava/lang/String;

    .line 334
    :cond_a
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 335
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->y:Ljava/lang/String;

    .line 338
    :cond_b
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 339
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->z:Ljava/lang/String;

    .line 342
    :cond_c
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 343
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->A:Ljava/lang/String;

    .line 346
    :cond_d
    const-string/jumbo v0, "disable"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 347
    const-string/jumbo v0, "disable"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B:Z

    .line 350
    :cond_e
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 351
    const-string/jumbo v0, "action"

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 354
    :cond_f
    const-string/jumbo v0, "onclick"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 355
    const-string/jumbo v0, "onclick"

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 358
    :cond_10
    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 359
    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    .line 364
    :goto_2
    const-string/jumbo v0, "onlongPress"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 365
    const-string/jumbo v0, "onlongPress"

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 368
    :cond_11
    const-string/jumbo v0, "needscale"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 369
    const-string/jumbo v0, "needscale"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->l:Z

    .line 372
    :cond_12
    const-string/jumbo v0, "alpha"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const-string/jumbo v0, "alpha"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->o:F

    goto/16 :goto_0

    .line 273
    :cond_13
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->r:Z

    if-nez v0, :cond_14

    .line 274
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    .line 275
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_1

    .line 277
    :cond_14
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    .line 278
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_1

    .line 361
    :cond_15
    const-string/jumbo v0, "visible"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    .line 241
    return-void
.end method

.method protected final a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    invoke-direct {v1, p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    .line 225
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    .line 231
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 3

    .prologue
    .line 234
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 235
    invoke-virtual {p0, p1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method public abstract a()Z
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 686
    const/4 v0, 0x0

    .line 687
    const-string/jumbo v1, "_class"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->x:Ljava/lang/String;

    .line 701
    :cond_0
    :goto_0
    return-object v0

    .line 689
    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->y:Ljava/lang/String;

    goto :goto_0

    .line 691
    :cond_2
    const-string/jumbo v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->z:Ljava/lang/String;

    goto :goto_0

    .line 693
    :cond_3
    const-string/jumbo v1, "display"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 694
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I()I

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 695
    :cond_5
    const-string/jumbo v1, "disable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 696
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->G()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 697
    :cond_7
    const-string/jumbo v1, "visibility"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const-string/jumbo v0, "hidden"

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "collapse"

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "visible"

    goto :goto_0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 706
    .line 707
    const-string/jumbo v0, "_class"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->x:Ljava/lang/String;

    .line 727
    :goto_0
    return v2

    .line 709
    :cond_0
    const-string/jumbo v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->y:Ljava/lang/String;

    goto :goto_0

    .line 711
    :cond_1
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->z:Ljava/lang/String;

    goto :goto_0

    .line 713
    :cond_2
    const-string/jumbo v0, "display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 714
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 715
    if-eqz v3, :cond_3

    const-string/jumbo v0, "false"

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->A:Ljava/lang/String;

    .line 716
    if-nez v3, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(I)V

    goto :goto_0

    .line 715
    :cond_3
    const-string/jumbo v0, "true"

    goto :goto_1

    .line 716
    :cond_4
    const/4 v0, 0x4

    goto :goto_2

    .line 717
    :cond_5
    const-string/jumbo v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 719
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B:Z

    .line 720
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B:Z

    if-nez v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->d(Z)V

    goto :goto_0

    .line 721
    :cond_7
    const-string/jumbo v0, "visibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 722
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move v2, v1

    .line 725
    goto :goto_0
.end method

.method public abstract b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object p1

    .line 164
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "{{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "}}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_1
    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 164
    goto :goto_1

    .line 168
    :cond_3
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->L:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 169
    const-string/jumbo v0, ""

    move v1, v2

    .line 171
    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 173
    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    .line 176
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 177
    const-string/jumbo v8, "|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 178
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 179
    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 181
    :cond_5
    invoke-direct {p0, v6, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 187
    :cond_6
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 188
    goto/16 :goto_0
.end method

.method public final b(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    .line 215
    return-void
.end method

.method public final b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 99
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->s:Z

    .line 107
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Lcom/alipay/android/app/json/JSONObject;
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 532
    const-string/jumbo v0, "hidden"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x4

    .line 540
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(I)V

    .line 541
    return-void

    .line 535
    :cond_0
    const-string/jumbo v0, "collapse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    const/16 v0, 0x8

    goto :goto_0

    .line 538
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->m:Z

    .line 219
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    .line 488
    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public event(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 735
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v2

    .line 736
    if-nez v2, :cond_0

    .line 761
    :goto_0
    return v1

    .line 740
    :cond_0
    const/4 v0, 0x1

    .line 741
    const-string/jumbo v3, "onclick"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 742
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/d;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/d;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;Lorg/luaj/vm2/LuaValue;)V

    .line 755
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Landroid/view/View$OnClickListener;)V

    .line 756
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    move v1, v0

    .line 761
    goto :goto_0

    :cond_1
    move v0, v1

    .line 758
    goto :goto_1
.end method

.method public abstract j()Landroid/view/View;
.end method

.method public r()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    return v0
.end method

.method public final y()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    .line 195
    return-void
.end method

.method public final z()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    return v0
.end method
