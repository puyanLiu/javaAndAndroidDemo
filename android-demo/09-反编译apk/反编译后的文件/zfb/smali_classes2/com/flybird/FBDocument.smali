.class public Lcom/flybird/FBDocument;
.super Ljava/lang/Object;
.source "FBDocument.java"


# static fields
.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;


# instance fields
.field final a:Ljava/lang/Object;

.field protected b:Z

.field private e:Z

.field private f:Lcom/alipay/android/app/template/OnTemplateClickListener;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/flybird/FBDocumentAssistor;

.field private j:Z

.field private k:Lcom/alipay/android/app/template/TemplatePasswordService;

.field private l:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field private m:Z

.field public mContext:Landroid/app/Activity;

.field public mCore:I

.field public mLabelMap:Ljava/util/HashMap;

.field public mRoot:Lcom/flybird/FBView;

.field public mScrollViewList:Ljava/util/ArrayList;

.field public mTimerList:Ljava/util/ArrayList;

.field public mViewMap:Ljava/util/HashMap;

.field private n:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/flybird/FBInput;

.field private q:Landroid/app/Dialog;

.field private r:Ljava/util/List;

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 107
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    aput-byte v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/flybird/FBDocument;->c:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    const/4 v2, 0x2

    aput-byte v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/flybird/FBDocument;->d:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "flybird"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flybird/FBDocument;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/OnTemplateClickListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->a:Ljava/lang/Object;

    .line 45
    iput-boolean v2, p0, Lcom/flybird/FBDocument;->e:Z

    .line 47
    iput-object v1, p0, Lcom/flybird/FBDocument;->f:Lcom/alipay/android/app/template/OnTemplateClickListener;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    .line 57
    iput-object v1, p0, Lcom/flybird/FBDocument;->g:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/flybird/FBDocument;->h:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/flybird/FBDocument;->i:Lcom/flybird/FBDocumentAssistor;

    .line 63
    iput-boolean v2, p0, Lcom/flybird/FBDocument;->j:Z

    .line 69
    iput-boolean v3, p0, Lcom/flybird/FBDocument;->m:Z

    .line 71
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->genDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBDocument;->n:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 73
    iput-object v1, p0, Lcom/flybird/FBDocument;->o:Landroid/widget/LinearLayout;

    .line 75
    iput-object v1, p0, Lcom/flybird/FBDocument;->p:Lcom/flybird/FBInput;

    .line 77
    iput-boolean v2, p0, Lcom/flybird/FBDocument;->b:Z

    .line 80
    iput-object v1, p0, Lcom/flybird/FBDocument;->q:Landroid/app/Dialog;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->r:Ljava/util/List;

    .line 84
    iput-boolean v3, p0, Lcom/flybird/FBDocument;->s:Z

    .line 85
    new-instance v0, Lcom/flybird/FBDocument$1;

    invoke-direct {v0, p0}, Lcom/flybird/FBDocument$1;-><init>(Lcom/flybird/FBDocument;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->t:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->u:Landroid/os/Handler;

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The template content is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p4, p0, Lcom/flybird/FBDocument;->f:Lcom/alipay/android/app/template/OnTemplateClickListener;

    .line 161
    iput-object p1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    .line 162
    new-instance v0, Lcom/flybird/FBDocumentAssistor;

    invoke-direct {v0, p1, p0}, Lcom/flybird/FBDocumentAssistor;-><init>(Landroid/app/Activity;Lcom/flybird/FBDocument;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->i:Lcom/flybird/FBDocumentAssistor;

    .line 163
    invoke-static {p0}, Lcom/flybird/FBDocument;->nativeCoreNew(Lcom/flybird/FBDocument;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBDocument;->mCore:I

    .line 164
    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v0, p2, p3}, Lcom/flybird/FBDocument;->nativeCoreLoad(ILjava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/flybird/FBDocument;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBDocument;->s:Z

    return-void
.end method

.method static synthetic b(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flybird/FBDocument;->p:Lcom/flybird/FBInput;

    return-object v0
.end method

.method static synthetic c(Lcom/flybird/FBDocument;)V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/flybird/FBDocument;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBDocument;->e:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/CountDownTimer;

    invoke-virtual {v0}, Lcom/flybird/CountDownTimer;->start()Lcom/flybird/CountDownTimer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->onLoadFinish()V

    goto :goto_1
.end method

.method public static native nativeCallJsMethod(II[Ljava/lang/Object;)I
.end method

.method public static native nativeCoreLoad(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeCoreNew(Lcom/flybird/FBDocument;)I
.end method

.method public static native nativeCoreReLoadData(ILjava/lang/String;)I
.end method

.method public static native nativeDestroyCore(I)V
.end method

.method public static native nativeExcuteJs(ILjava/lang/String;)I
.end method


# virtual methods
.method public actionSheet(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 421
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v0, "btns"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 424
    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_0

    .line 428
    const-string/jumbo v0, "cancelBtn"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, 0x1

    .line 430
    array-length v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 431
    array-length v5, v3

    invoke-static {v3, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    array-length v1, v3

    const-string/jumbo v3, "cancelBtn"

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v0

    move-object v0, v2

    .line 435
    :goto_1
    array-length v2, v0

    .line 437
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 438
    new-instance v4, Lcom/flybird/FBDocument$6;

    invoke-direct {v4, p0, v1, v2, p2}, Lcom/flybird/FBDocument$6;-><init>(Lcom/flybird/FBDocument;ZII)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 455
    return-void

    .line 425
    :cond_0
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_1
.end method

.method public addViewWithId(Ljava/lang/String;Lcom/flybird/FBView;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public alert(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 461
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    const-string/jumbo v3, "button"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 465
    new-instance v4, Lcom/flybird/FBDocument$7;

    invoke-direct {v4, p0, p2}, Lcom/flybird/FBDocument$7;-><init>(Lcom/flybird/FBDocument;I)V

    .line 471
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/app/template/SystemDefaultDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 472
    return-void
.end method

.method public asyncSubmit(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/flybird/FBDocument;->f:Lcom/alipay/android/app/template/OnTemplateClickListener;

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Lcom/flybird/FBClickCallBack;

    invoke-direct {v0, p2, p0}, Lcom/flybird/FBClickCallBack;-><init>(ILcom/flybird/FBDocument;)V

    .line 598
    iget-object v1, p0, Lcom/flybird/FBDocument;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v1, p0, Lcom/flybird/FBDocument;->f:Lcom/alipay/android/app/template/OnTemplateClickListener;

    invoke-interface {v1, p0, p1, v0}, Lcom/alipay/android/app/template/OnTemplateClickListener;->onAsyncEvent(Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z

    .line 601
    :cond_0
    return-void
.end method

.method public callJsMethod(I[Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v0, p1, p2}, Lcom/flybird/FBDocument;->nativeCallJsMethod(II[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public confirm(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 490
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    const-string/jumbo v3, "okButton"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 494
    const-string/jumbo v4, "cancelButton"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    new-instance v4, Lcom/flybird/FBDocument$8;

    invoke-direct {v4, p0, p2}, Lcom/flybird/FBDocument$8;-><init>(Lcom/flybird/FBDocument;I)V

    .line 506
    new-instance v6, Lcom/flybird/FBDocument$9;

    invoke-direct {v6, p0, p2}, Lcom/flybird/FBDocument$9;-><init>(Lcom/flybird/FBDocument;I)V

    .line 518
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/app/template/SystemDefaultDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 519
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 710
    iput-object v2, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    .line 711
    iget-object v0, p0, Lcom/flybird/FBDocument;->i:Lcom/flybird/FBDocumentAssistor;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/flybird/FBDocument;->i:Lcom/flybird/FBDocumentAssistor;

    invoke-virtual {v0}, Lcom/flybird/FBDocumentAssistor;->destroy()V

    .line 713
    iput-object v2, p0, Lcom/flybird/FBDocument;->i:Lcom/flybird/FBDocumentAssistor;

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/flybird/FBDocument;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/flybird/FBDocument;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 722
    iput-object v2, p0, Lcom/flybird/FBDocument;->f:Lcom/alipay/android/app/template/OnTemplateClickListener;

    .line 723
    iput-object v2, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    .line 724
    iget-object v0, p0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 725
    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 726
    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 728
    return-void

    .line 716
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBClickCallBack;

    .line 717
    invoke-virtual {v0}, Lcom/flybird/FBClickCallBack;->clear()V

    goto :goto_0
.end method

.method public findViewById(Ljava/lang/String;)Lcom/flybird/FBView;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    return-object v0
.end method

.method public getBodyView()Lcom/flybird/FBView;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    return-object v0
.end method

.method public getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/flybird/FBDocument;->n:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method public getDocumentAssistor()Lcom/flybird/FBDocumentAssistor;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flybird/FBDocument;->i:Lcom/flybird/FBDocumentAssistor;

    return-object v0
.end method

.method public getGlobalClick()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/flybird/FBDocument;->s:Z

    return v0
.end method

.method public getKeyboardParentView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/flybird/FBDocument;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getShowingDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/flybird/FBDocument;->q:Landroid/app/Dialog;

    return-object v0
.end method

.method public getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/flybird/FBDocument;->l:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method public getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/flybird/FBDocument;->k:Lcom/alipay/android/app/template/TemplatePasswordService;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    iget-object v0, v0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewEncryptValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    .line 706
    invoke-virtual {v0}, Lcom/flybird/FBView;->getEncryptValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleTwoArgsFunc(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 574
    const-string/jumbo v0, "toast"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->toast(Ljava/lang/String;I)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    const-string/jumbo v0, "confirm"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->confirm(Ljava/lang/String;I)V

    goto :goto_0

    .line 578
    :cond_2
    const-string/jumbo v0, "asyncSubmit"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->asyncSubmit(Ljava/lang/String;I)V

    goto :goto_0

    .line 580
    :cond_3
    const-string/jumbo v0, "actionSheet"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->actionSheet(Ljava/lang/String;I)V

    goto :goto_0

    .line 582
    :cond_4
    const-string/jumbo v0, "alert"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 583
    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->alert(Ljava/lang/String;I)V

    goto :goto_0

    .line 584
    :cond_5
    const-string/jumbo v0, "picker"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->picker(Ljava/lang/String;I)V

    goto :goto_0

    .line 586
    :cond_6
    const-string/jumbo v0, "rpc"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 587
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestData"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/flybird/FBDocument$11;

    invoke-direct {v2, p0, p2}, Lcom/flybird/FBDocument$11;-><init>(Lcom/flybird/FBDocument;I)V

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/template/util/RpcHelper;->callRpc(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;)V

    goto :goto_0

    .line 588
    :cond_7
    const-string/jumbo v0, "share"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 589
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/flybird/FBDocument$10;

    invoke-direct {v2, p0, p2}, Lcom/flybird/FBDocument$10;-><init>(Lcom/flybird/FBDocument;I)V

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/template/util/ShareHelper;->share(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;)V

    goto :goto_0

    .line 590
    :cond_8
    const-string/jumbo v0, "submit"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Lcom/flybird/FBDocument;->submit(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public hiddenKeyboardService(Landroid/view/View;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 686
    .line 687
    iget-boolean v1, p0, Lcom/flybird/FBDocument;->m:Z

    if-nez v1, :cond_2

    .line 688
    iget-object v1, p0, Lcom/flybird/FBDocument;->l:Lcom/alipay/android/app/template/TemplateKeyboardService;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v1

    .line 690
    :goto_0
    if-eqz p2, :cond_1

    .line 691
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBDocument;->n:Lcom/alipay/android/app/template/TemplateKeyboardService;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    :goto_1
    return v0

    .line 691
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public innerLayout(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x3

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 227
    sget-object v0, Lcom/flybird/FBDocument;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v3

    .line 228
    :goto_0
    array-length v0, v5

    if-lt v2, v0, :cond_0

    .line 360
    return-void

    .line 230
    :cond_0
    aget-object v0, v5, v2

    .line 231
    sget-object v1, Lcom/flybird/FBDocument;->d:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 233
    aget-object v0, v1, v3

    .line 235
    const-string/jumbo v6, "create"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 237
    aget-object v6, v1, v9

    .line 238
    aget-object v7, v1, v10

    .line 242
    const-string/jumbo v0, "body"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Lcom/flybird/FBView;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1, v4, p0}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    .line 244
    iget-object v1, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    .line 273
    :goto_1
    if-nez v1, :cond_b

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unsupport tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    const-string/jumbo v0, "nav"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0, v9}, Lcom/flybird/FBDocument;->setFullscreen(Z)V

    .line 249
    :cond_2
    const-string/jumbo v0, "div"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "nav"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    :cond_3
    new-instance v1, Lcom/flybird/FBView;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto :goto_1

    .line 251
    :cond_4
    const-string/jumbo v0, "a"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "label"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "marquee"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    .line 253
    if-nez v0, :cond_18

    .line 255
    const-string/jumbo v0, "marquee"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 256
    new-instance v0, Lcom/flybird/MarqueeTextView;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/flybird/MarqueeTextView;-><init>(Landroid/content/Context;)V

    .line 258
    :goto_2
    new-instance v1, Lcom/flybird/FBLabel;

    iget-object v8, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v8, v0, p0}, Lcom/flybird/FBLabel;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 259
    iget-object v8, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    move-object v0, v1

    check-cast v0, Lcom/flybird/FBLabel;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 261
    :cond_6
    const-string/jumbo v0, "img"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    new-instance v1, Lcom/flybird/FBImg;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v0, p0}, Lcom/flybird/FBImg;-><init>(Landroid/content/Context;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    .line 263
    :cond_7
    const-string/jumbo v0, "button"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 264
    new-instance v1, Lcom/flybird/FBButton;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBButton;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    .line 265
    :cond_8
    const-string/jumbo v0, "input"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 266
    new-instance v1, Lcom/flybird/FBInput;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBInput;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    .line 267
    :cond_9
    const-string/jumbo v0, "dialog"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 268
    new-instance v1, Lcom/flybird/FBDialog;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBDialog;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    .line 269
    :cond_a
    const-string/jumbo v0, "iframe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 270
    new-instance v1, Lcom/flybird/FBWebView;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v0, p0}, Lcom/flybird/FBWebView;-><init>(Landroid/content/Context;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    .line 276
    :cond_b
    iput-object v7, v1, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    .line 278
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/flybird/FBView;->mNode:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_3
    invoke-virtual {p0, v6, v1}, Lcom/flybird/FBDocument;->addViewWithId(Ljava/lang/String;Lcom/flybird/FBView;)V

    .line 228
    :cond_c
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/flybird/FBView;->mNode:J

    goto :goto_3

    .line 284
    :cond_d
    const-string/jumbo v6, "add"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 285
    aget-object v0, v1, v9

    .line 286
    aget-object v1, v1, v10

    .line 288
    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    .line 289
    iget-object v6, v0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    const-string/jumbo v7, "nav"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 290
    invoke-virtual {p0, v1}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v1

    .line 291
    invoke-virtual {v1, v0}, Lcom/flybird/FBView;->addView(Lcom/flybird/FBView;)V

    goto :goto_4

    .line 294
    :cond_e
    const-string/jumbo v6, "del"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 295
    aget-object v1, v1, v9

    .line 297
    invoke-virtual {p0, v1}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v6

    .line 299
    if-eqz v6, :cond_f

    .line 301
    iget-object v0, v6, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 302
    if-eqz v0, :cond_f

    .line 303
    iget-object v6, v6, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 307
    :cond_f
    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 310
    :cond_10
    const-string/jumbo v6, "up_rc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 311
    aget-object v0, v1, v9

    .line 312
    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    .line 314
    aget-object v1, v1, v10

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 315
    if-eqz v0, :cond_c

    .line 316
    aget-object v6, v1, v3

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 317
    aget-object v7, v1, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 318
    aget-object v8, v1, v10

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 319
    aget-object v1, v1, v11

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 316
    invoke-virtual {v0, v6, v7, v8, v1}, Lcom/flybird/FBView;->setRect(FFFF)V

    goto/16 :goto_4

    .line 322
    :cond_11
    const-string/jumbo v6, "up_css"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 323
    aget-object v0, v1, v9

    .line 324
    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_c

    .line 326
    aget-object v6, v1, v10

    .line 327
    array-length v7, v1

    if-le v7, v11, :cond_c

    if-eqz v0, :cond_c

    .line 328
    aget-object v1, v1, v11

    .line 329
    invoke-virtual {v0, v6, v1}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 332
    :cond_12
    const-string/jumbo v6, "up_attr"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 333
    aget-object v0, v1, v9

    .line 334
    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    .line 335
    aget-object v6, v1, v10

    .line 336
    aget-object v1, v1, v11

    .line 337
    if-eqz v0, :cond_c

    .line 338
    invoke-virtual {v0, v6, v1}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 340
    :cond_13
    const-string/jumbo v6, "up_event"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 341
    aget-object v0, v1, v9

    .line 342
    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v6

    .line 343
    aget-object v7, v1, v10

    .line 344
    const-string/jumbo v0, ""

    .line 345
    array-length v8, v1

    if-le v8, v11, :cond_14

    .line 346
    aget-object v0, v1, v11

    .line 348
    :cond_14
    if-eqz v6, :cond_c

    .line 349
    invoke-virtual {v6, v7, v0}, Lcom/flybird/FBView;->updateEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 351
    :cond_15
    const-string/jumbo v6, "up_func"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 352
    aget-object v0, v1, v9

    .line 353
    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    .line 354
    aget-object v1, v1, v10

    .line 355
    if-eqz v0, :cond_c

    .line 356
    const-string/jumbo v6, ""

    invoke-virtual {v0, v1, v6}, Lcom/flybird/FBView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_16
    move-object v1, v4

    goto/16 :goto_1

    :cond_17
    move-object v0, v4

    goto/16 :goto_2

    :cond_18
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public isDefaultKeyboard()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/flybird/FBDocument;->m:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/flybird/FBDocument;->j:Z

    return v0
.end method

.method public isOnloadFinish()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/flybird/FBDocument;->e:Z

    return v0
.end method

.method public layout(Lcom/flybird/FBView;)V
    .locals 2

    .prologue
    .line 642
    iget-wide v0, p1, Lcom/flybird/FBView;->mNode:J

    invoke-virtual {p0, v0, v1}, Lcom/flybird/FBDocument;->nativeNodeDirtyLayout(J)V

    .line 643
    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->nativeCoreLayout(I)V

    .line 644
    return-void
.end method

.method public native nativeCoreLayout(I)V
.end method

.method public native nativeNodeDirtyLayout(J)V
.end method

.method public onLoadFinish()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/flybird/FBDocument$3;

    invoke-direct {v2, p0}, Lcom/flybird/FBDocument$3;-><init>(Lcom/flybird/FBDocument;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    iget-object v1, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    iget-object v1, v1, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    const-string/jumbo v2, "alipay_msp_view_wrapper"

    const-string/jumbo v3, "id"

    .line 208
    const-string/jumbo v4, "com.alipay.android.app.template"

    .line 207
    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 209
    iget-object v1, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    iget-object v2, v1, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    iget-object v4, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    move v1, v0

    invoke-static/range {v0 .. v5}, Lcom/flybird/FBView;->dispatchOnLongClickEvent(ZZLandroid/view/View;Lcom/flybird/FBView;Landroid/view/View$OnLongClickListener;I)V

    .line 210
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/alipay/android/app/template/UiAssistantor;->openWeb(Ljava/lang/String;Landroid/content/Context;)V

    .line 635
    return-void
.end method

.method public picker(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 475
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 476
    const-string/jumbo v1, "btns"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    .line 477
    const-string/jumbo v2, "default"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 478
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 480
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 481
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 484
    array-length v0, v3

    if-lez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/flybird/FBDocument$12;

    invoke-direct {v1, p0, p2}, Lcom/flybird/FBDocument$12;-><init>(Lcom/flybird/FBDocument;I)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 486
    :cond_0
    return-void

    .line 482
    :cond_1
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reloadData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v0, p1}, Lcom/flybird/FBDocument;->nativeCoreReLoadData(ILjava/lang/String;)I

    .line 182
    return-void
.end method

.method public setAutoFocusInput(Lcom/flybird/FBInput;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/flybird/FBDocument;->p:Lcom/flybird/FBInput;

    .line 114
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/flybird/FBDocument;->j:Z

    .line 631
    return-void
.end method

.method public setGlobalClick(Z)V
    .locals 2

    .prologue
    .line 135
    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1}, Lcom/flybird/FBDocument;->setGlobalClick(ZJ)V

    .line 136
    return-void
.end method

.method public setGlobalClick(ZJ)V
    .locals 2

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/flybird/FBDocument;->s:Z

    .line 140
    if-nez p1, :cond_1

    .line 141
    const-wide/16 v0, 0x7d0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/flybird/FBDocument;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/FBDocument;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/FBDocument;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_1
    return-void
.end method

.method public setKeyboardParent(Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/flybird/FBDocument;->o:Landroid/widget/LinearLayout;

    .line 702
    return-void
.end method

.method public setOnTemplateListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/flybird/FBDocument;->f:Lcom/alipay/android/app/template/OnTemplateClickListener;

    .line 173
    return-void
.end method

.method public setShowingDialog(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/flybird/FBDocument;->q:Landroid/app/Dialog;

    .line 659
    return-void
.end method

.method public setTemplateKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)V
    .locals 1

    .prologue
    .line 651
    if-eqz p1, :cond_0

    .line 652
    iput-object p1, p0, Lcom/flybird/FBDocument;->l:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBDocument;->m:Z

    .line 655
    :cond_0
    return-void
.end method

.method public setTemplatePasswordService(Lcom/alipay/android/app/template/TemplatePasswordService;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/flybird/FBDocument;->k:Lcom/alipay/android/app/template/TemplatePasswordService;

    .line 671
    return-void
.end method

.method public showAutoFocusInputKeyboard()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flybird/FBDocument;->u:Landroid/os/Handler;

    new-instance v1, Lcom/flybird/FBDocument$2;

    invoke-direct {v1, p0}, Lcom/flybird/FBDocument$2;-><init>(Lcom/flybird/FBDocument;)V

    .line 127
    const-wide/16 v2, 0x2bc

    .line 117
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method public showInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 381
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v1, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "loc:back"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "loc:exit"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/flybird/FBDocument;->hiddenKeyboardService(Landroid/view/View;Z)Z

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->f:Lcom/alipay/android/app/template/OnTemplateClickListener;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/flybird/FBDocument;->f:Lcom/alipay/android/app/template/OnTemplateClickListener;

    invoke-interface {v0, p0, p1, v2}, Lcom/alipay/android/app/template/OnTemplateClickListener;->onEvent(Ljava/lang/Object;Ljava/lang/String;Z)Z

    .line 385
    :cond_2
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 405
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 409
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 410
    new-instance v1, Lcom/flybird/FBDocument$5;

    invoke-direct {v1, p0, p2}, Lcom/flybird/FBDocument$5;-><init>(Lcom/flybird/FBDocument;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 418
    :cond_0
    return-void
.end method

.method public updateLayout(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 363
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 364
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/flybird/FBDocument$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/flybird/FBDocument$4;-><init>(Lcom/flybird/FBDocument;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flybird/FBDocument;->innerLayout(Ljava/lang/String;)V

    goto :goto_0
.end method
