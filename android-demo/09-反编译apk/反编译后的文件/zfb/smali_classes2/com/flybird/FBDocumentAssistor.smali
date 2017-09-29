.class public Lcom/flybird/FBDocumentAssistor;
.super Ljava/lang/Object;
.source "FBDocumentAssistor.java"


# static fields
.field private static b:F

.field private static c:I

.field private static d:I

.field private static e:F

.field private static g:Ljava/util/Map;


# instance fields
.field private a:Landroid/app/Activity;

.field private f:Lcom/flybird/FBDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/flybird/FBDocumentAssistor;->b:F

    .line 35
    sput v1, Lcom/flybird/FBDocumentAssistor;->c:I

    .line 36
    sput v1, Lcom/flybird/FBDocumentAssistor;->d:I

    .line 37
    const/high16 v0, 0x41600000    # 14.0f

    sput v0, Lcom/flybird/FBDocumentAssistor;->e:F

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flybird/FBDocumentAssistor;->g:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/flybird/FBDocument;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBDocumentAssistor;->f:Lcom/flybird/FBDocument;

    .line 42
    iput-object p1, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/flybird/FBDocumentAssistor;->f:Lcom/flybird/FBDocument;

    .line 45
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sput v0, Lcom/flybird/FBDocumentAssistor;->e:F

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/flybird/FBDocumentAssistor;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 109
    int-to-long v2, p2

    .line 110
    if-eqz p3, :cond_0

    .line 112
    const-wide/32 v2, 0x54c5638

    .line 115
    :cond_0
    new-instance v0, Lcom/flybird/FBDocumentAssistor$1;

    int-to-long v4, p2

    move-object v1, p0

    move v6, p3

    move-object v7, p1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/flybird/FBDocumentAssistor$1;-><init>(Lcom/flybird/FBDocumentAssistor;JJZLcom/flybird/FBDocument;I)V

    aput-object v0, p5, v9

    .line 131
    invoke-virtual {p1}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    aget-object v0, p5, v9

    invoke-virtual {v0}, Lcom/flybird/CountDownTimer;->start()Lcom/flybird/CountDownTimer;

    .line 135
    :cond_1
    iget-object v0, p1, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    aget-object v1, p5, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/flybird/FBDocumentAssistor;Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/flybird/FBDocumentAssistor;->a(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V

    return-void
.end method

.method public static destroyTimerBlock(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;)I
    .locals 3

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/flybird/CountDownTimer;->cancel()V

    .line 165
    const-string/jumbo v0, "faywong"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancel timer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static putAssetRes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/flybird/FBDocumentAssistor;->g:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public calcTextSize(Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ)[F
    .locals 19

    .prologue
    .line 247
    const/4 v1, 0x2

    new-array v0, v1, [F

    move-object/from16 v16, v0

    .line 249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 251
    new-instance v17, Landroid/os/ConditionVariable;

    invoke-direct/range {v17 .. v17}, Landroid/os/ConditionVariable;-><init>()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    move-object/from16 v18, v0

    new-instance v1, Lcom/flybird/FBDocumentAssistor$4;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-direct/range {v1 .. v17}, Lcom/flybird/FBDocumentAssistor$4;-><init>(Lcom/flybird/FBDocumentAssistor;Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ[FLandroid/os/ConditionVariable;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual/range {v17 .. v17}, Landroid/os/ConditionVariable;->block()V

    .line 272
    :goto_0
    return-object v16

    :cond_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    .line 268
    invoke-virtual/range {v2 .. v16}, Lcom/flybird/FBDocumentAssistor;->calcTextSizeBlock(Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ[F)V

    goto :goto_0
.end method

.method public calcTextSizeBlock(Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ[F)V
    .locals 5

    .prologue
    .line 279
    iget-object v1, p1, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flybird/FBLabel;

    .line 280
    if-nez v1, :cond_a

    .line 281
    new-instance v1, Lcom/flybird/FBLabel;

    iget-object v2, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/flybird/FBLabel;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 282
    iget-object v2, p1, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 284
    :goto_0
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/flybird/FBLabel;->setSupportEmoji(Z)V

    .line 286
    iget-object v1, v2, Lcom/flybird/FBLabel;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 288
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    if-lez p8, :cond_0

    .line 291
    invoke-virtual {v1, p8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 294
    :cond_0
    if-eqz p9, :cond_1

    .line 295
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 298
    :cond_1
    const-string/jumbo v3, "bold"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 302
    :cond_2
    const-string/jumbo v3, "line-through"

    invoke-virtual {p7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 303
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 304
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    .line 310
    :cond_3
    :goto_1
    iput-object p3, v2, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    .line 311
    invoke-virtual {v2}, Lcom/flybird/FBLabel;->initText()V

    .line 313
    const/4 v2, 0x0

    cmpl-float v2, p10, v2

    if-lez v2, :cond_4

    .line 314
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p10, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 317
    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 318
    move/from16 v0, p11

    float-to-int v2, v0

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 319
    const/4 v2, -0x2

    .line 320
    const/4 v4, 0x0

    .line 319
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 321
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    .line 322
    :goto_2
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 323
    if-nez v2, :cond_5

    .line 324
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 326
    :cond_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 327
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 329
    int-to-float v4, v3

    cmpl-float v4, v4, p12

    if-lez v4, :cond_9

    .line 331
    move/from16 v0, p12

    float-to-int v2, v0

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 332
    const/4 v3, -0x2

    .line 333
    const/4 v4, 0x0

    .line 332
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 334
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 335
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 336
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 339
    :goto_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 340
    const/4 v1, 0x0

    move v2, v1

    .line 343
    :cond_6
    const/4 v3, 0x0

    int-to-float v2, v2

    aput v2, p14, v3

    .line 344
    const/4 v2, 0x1

    int-to-float v1, v1

    aput v1, p14, v2

    .line 345
    return-void

    .line 305
    :cond_7
    const-string/jumbo v3, "underline"

    invoke-virtual {p7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 307
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_1

    .line 321
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    move v1, v2

    move v2, v3

    goto :goto_3

    :cond_a
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public checkAllowCamera()I
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 374
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    .line 375
    const-string/jumbo v1, "android.permission.CAMERA"

    .line 376
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 377
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 374
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public createTimer(Lcom/flybird/FBDocument;IZI)Lcom/flybird/CountDownTimer;
    .locals 9

    .prologue
    .line 140
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/flybird/CountDownTimer;

    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 144
    new-instance v7, Landroid/os/ConditionVariable;

    invoke-direct {v7}, Landroid/os/ConditionVariable;-><init>()V

    .line 146
    iget-object v8, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    new-instance v0, Lcom/flybird/FBDocumentAssistor$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/flybird/FBDocumentAssistor$2;-><init>(Lcom/flybird/FBDocumentAssistor;Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;Landroid/os/ConditionVariable;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    const-wide/16 v0, 0x3a98

    invoke-virtual {v7, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    .line 159
    :goto_0
    const/4 v0, 0x0

    aget-object v0, v6, v0

    return-object v0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 156
    invoke-direct/range {v1 .. v6}, Lcom/flybird/FBDocumentAssistor;->a(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    .line 365
    iput-object v0, p0, Lcom/flybird/FBDocumentAssistor;->f:Lcom/flybird/FBDocument;

    .line 366
    return-void
.end method

.method public destroyTimer(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;)I
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    new-instance v2, Lcom/flybird/FBDocumentAssistor$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/flybird/FBDocumentAssistor$3;-><init>(Lcom/flybird/FBDocumentAssistor;Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 196
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_0
    invoke-static {p1, p2}, Lcom/flybird/FBDocumentAssistor;->destroyTimerBlock(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;)I

    goto :goto_0
.end method

.method public getAndroidApiLevel()I
    .locals 1

    .prologue
    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getDefaultFontSize()F
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/flybird/FBDocumentAssistor;->e:F

    return v0
.end method

.method public getDp()F
    .locals 2

    .prologue
    .line 94
    sget v0, Lcom/flybird/FBDocumentAssistor;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    sput v0, Lcom/flybird/FBDocumentAssistor;->b:F

    .line 97
    :cond_0
    sget v0, Lcom/flybird/FBDocumentAssistor;->b:F

    return v0
.end method

.method public getImageSize(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 201
    aput v2, v1, v5

    .line 202
    aput v2, v1, v6

    .line 204
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "undefined"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 239
    :goto_0
    return-object v0

    .line 208
    :cond_1
    const-string/jumbo v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "www"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->f:Lcom/flybird/FBDocument;

    invoke-virtual {v0, p1}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBImg;

    .line 211
    if-eqz v0, :cond_3

    .line 212
    iget v2, v0, Lcom/flybird/FBImg;->c:I

    int-to-float v2, v2

    aput v2, v1, v5

    .line 213
    iget v0, v0, Lcom/flybird/FBImg;->d:I

    int-to-float v0, v0

    aput v0, v1, v6

    :cond_3
    :goto_1
    move-object v0, v1

    .line 239
    goto :goto_0

    .line 217
    :cond_4
    const/4 v2, 0x0

    .line 218
    const-string/jumbo v0, "indicatior"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    const-string/jumbo v3, "alipay_msp_indicatior_loading"

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/ResUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    :goto_2
    if-nez v0, :cond_6

    .line 230
    const-string/jumbo v0, "FBDocumentAssistor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FATAL ERROR!, The image(src: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is not existed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {p2, v0, v3, v4}, Lcom/flybird/FBTools;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string/jumbo v3, "FBDocumentAssistor"

    const-string/jumbo v4, "exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_2

    .line 234
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v5

    .line 235
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    aput v0, v1, v6

    goto :goto_1
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/template/UiAssistantor;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()F
    .locals 1

    .prologue
    .line 357
    sget v0, Lcom/flybird/FBDocumentAssistor;->d:I

    if-gez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    sput v0, Lcom/flybird/FBDocumentAssistor;->d:I

    .line 360
    :cond_0
    sget v0, Lcom/flybird/FBDocumentAssistor;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public getScreenWidth()F
    .locals 2

    .prologue
    .line 348
    sget v0, Lcom/flybird/FBDocumentAssistor;->c:I

    if-gez v0, :cond_0

    .line 349
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 351
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/flybird/FBDocumentAssistor;->c:I

    .line 353
    :cond_0
    sget v0, Lcom/flybird/FBDocumentAssistor;->c:I

    int-to-float v0, v0

    return v0
.end method

.method public native nativeOnTimer(II)I
.end method

.method public readAssertFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :try_start_0
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 68
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 69
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_0
    sget-object v0, Lcom/flybird/FBDocumentAssistor;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/flybird/FBDocumentAssistor;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 75
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 78
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_3

    .line 81
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    if-eqz v0, :cond_2

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method
