.class public final Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;
.super Ljava/lang/Object;
.source "AdHelper.java"


# static fields
.field private static c:I


# instance fields
.field private a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

.field private b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 202
    const-class v0, Landroid/widget/ScrollView;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 203
    if-nez v0, :cond_1

    move-object v0, v2

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v5, v1, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    if-nez v1, :cond_0

    move-object v0, v2

    .line 209
    goto :goto_0

    :cond_2
    move v1, v4

    .line 206
    goto :goto_1
.end method

.method private a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 3

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 473
    instance-of v1, p1, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v1, :cond_0

    .line 474
    check-cast p1, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 487
    :goto_0
    return-object p1

    .line 475
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 476
    check-cast p1, Landroid/view/ViewGroup;

    .line 477
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 480
    :goto_1
    if-le v1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    .line 479
    if-nez v0, :cond_4

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 484
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recursive():ignore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    :cond_3
    move-object p1, v0

    goto :goto_0

    :cond_4
    move-object p1, v0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 221
    const/4 v1, 0x0

    .line 222
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 236
    :cond_0
    :goto_1
    return-object v1

    .line 223
    :cond_1
    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 229
    goto :goto_1

    .line 230
    :cond_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 231
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z
    .locals 11

    .prologue
    const-wide/high16 v9, 0x402a000000000000L    # 13.0

    const/4 v1, -0x2

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 256
    .line 257
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    if-nez v0, :cond_1

    :cond_0
    move v3, v8

    .line 467
    :goto_0
    return v3

    .line 272
    :cond_1
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 271
    check-cast v2, Landroid/view/ViewGroup;

    .line 273
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    .line 275
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string/jumbo v4, "ANNOUNCEMENT"

    .line 278
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string/jumbo v4, "NOTIFY"

    .line 280
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 283
    :cond_2
    iget v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    if-lez v0, :cond_3

    .line 284
    iget v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    int-to-double v4, v0

    invoke-static {p1, v4, v5}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v5

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    sget-object v4, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    if-ne v0, v4, :cond_4

    .line 292
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    const/4 v1, 0x3

    .line 295
    sget v4, Lcom/alipay/mobile/ui/R$id;->titlebar_kenel:I

    .line 294
    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 297
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_14

    .line 299
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 300
    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v3

    :goto_2
    move v3, v0

    .line 467
    goto :goto_0

    .line 287
    :cond_3
    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    .line 286
    invoke-static {p1, v4, v5}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v5

    goto :goto_1

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    sget-object v4, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->d:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    if-ne v0, v4, :cond_6

    .line 307
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-class v4, Landroid/widget/ListView;

    .line 306
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 308
    if-eqz v0, :cond_5

    .line 309
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 310
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 311
    if-nez v4, :cond_5

    .line 312
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 318
    :cond_5
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 317
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_14

    .line 321
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 322
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 324
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 325
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v0, v3

    .line 326
    goto :goto_2

    .line 329
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    sget-object v4, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->c:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    if-ne v0, v4, :cond_9

    .line 332
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 331
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_7

    .line 335
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 336
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    invoke-static {p1, v9, v10}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 339
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 340
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v3

    .line 341
    goto :goto_2

    .line 345
    :cond_7
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-class v4, Landroid/widget/ListView;

    .line 344
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 346
    if-eqz v0, :cond_8

    .line 347
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 348
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 349
    if-nez v2, :cond_14

    .line 350
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-static {p1, v9, v10}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v4

    .line 355
    invoke-virtual {v1, v8, v4, v8, v8}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setPadding(IIII)V

    .line 357
    invoke-virtual {v1, p2, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 359
    iget-object v2, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    move v0, v3

    .line 361
    goto/16 :goto_2

    .line 365
    :cond_8
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/j;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;Landroid/view/ViewGroup;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Landroid/app/Activity;ILandroid/view/View;Landroid/view/View;)V

    .line 392
    const-wide/16 v3, 0x1f4

    .line 367
    invoke-virtual {v2, v0, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v8

    goto/16 :goto_2

    .line 397
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    if-ne v0, v1, :cond_a

    .line 399
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 401
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 402
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 403
    invoke-virtual {v1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 405
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 406
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 407
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v0, v3

    .line 408
    goto/16 :goto_2

    .line 409
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->e:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    if-ne v0, v1, :cond_c

    .line 410
    const-string/jumbo v1, "URL"

    .line 411
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 413
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/lang/String;)I

    :goto_3
    move v0, v3

    .line 420
    goto/16 :goto_2

    .line 415
    :cond_b
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 417
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 418
    invoke-virtual {v2, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->f:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    if-ne v0, v1, :cond_14

    .line 422
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 426
    sget v0, Lcom/alipay/mobile/ui/R$id;->titlebar_kenel:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 427
    if-nez v0, :cond_f

    .line 428
    const-string/jumbo v1, "H5Activity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 430
    :try_start_0
    const-string/jumbo v1, "h5_titlebar"

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 434
    :goto_4
    if-eqz v1, :cond_14

    .line 435
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_d

    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 437
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move v0, v8

    .line 438
    goto/16 :goto_2

    :catch_0
    move-exception v1

    :cond_f
    move-object v1, v0

    goto :goto_4

    .line 440
    :cond_10
    const-string/jumbo v0, "H5Activity"

    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 443
    sget v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->c:I

    if-nez v0, :cond_11

    .line 445
    const/high16 v0, 0x42400000    # 48.0f

    .line 444
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->c:I

    .line 452
    :cond_11
    :goto_5
    sget v1, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->c:I

    .line 454
    const-string/jumbo v0, "OspTabHostActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 455
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 457
    const v0, 0x1020011

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 456
    check-cast v0, Landroid/view/ViewGroup;

    .line 459
    :goto_6
    invoke-virtual {v4, v8, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 460
    const/16 v1, 0x33

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 461
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 462
    invoke-virtual {v0, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v3

    .line 463
    goto/16 :goto_2

    .line 448
    :cond_12
    invoke-virtual {v1, v8, v8}, Landroid/view/View;->measure(II)V

    .line 450
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->c:I

    goto :goto_5

    :cond_13
    move-object v0, v2

    goto :goto_6

    :cond_14
    move v0, v8

    goto/16 :goto_2

    :cond_15
    move v5, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/app/Activity;Landroid/view/View;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z
    .locals 1

    .prologue
    .line 53
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string/jumbo v2, "ROTATION"

    .line 101
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->e(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string/jumbo v2, "LIST"

    .line 104
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string/jumbo v2, "ANNOUNCEMENT"

    .line 107
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->b(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string/jumbo v2, "BANNER"

    .line 110
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->c(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_3
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string/jumbo v2, "NOTIFY"

    .line 113
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->d(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAdView:illeagle spaceInfo.multiStyle:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v2, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    if-nez v0, :cond_d

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u6570\u636e\u5207\u5165AdHelper.showAD spaceinfo\u65e0\u6548 spaceCode="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    if-nez p2, :cond_c

    const-string/jumbo v0, "(spaceinfo=null)"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TOP"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "com.alipay.android.launcher.TabLauncher"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LISTHEADER"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HEADER"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->d:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    goto :goto_3

    :cond_6
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BOTTOM"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    goto :goto_3

    :cond_7
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CENTER"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FOOTER"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->c:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    goto :goto_3

    :cond_9
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FULL"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->e:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    goto :goto_3

    :cond_a
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FLOATTOP"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;->f:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b:Lcom/alipay/android/phone/businesscommon/advertisement/impl/k;

    goto/16 :goto_3

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "spaceInfo.location is illeagle:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spaceInfo.spaceCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 179
    :cond_c
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    goto/16 :goto_2

    .line 182
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6570\u636e\u5207\u5165ADHelper.showAD spaceInfo\u4fe1\u606f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 130
    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 132
    :cond_0
    invoke-static {p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u57cb\u5751AdHelper.showAD spaceinfo\u65e0\u6548 spaceCode="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    if-nez p3, :cond_1

    const-string/jumbo v0, "(spaceinfo=null)"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    move v0, v1

    .line 167
    :goto_1
    return v0

    .line 135
    :cond_1
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u57cb\u5751ADHelper.showAD spaceInfo\u4fe1\u606f:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->b(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;

    move-result-object v2

    .line 141
    if-nez v2, :cond_3

    move v0, v1

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    if-eqz v2, :cond_4

    .line 144
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    const-string/jumbo v0, "ROTATION"

    .line 146
    iget-object v1, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 165
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 167
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 149
    :cond_5
    const/4 v0, -0x2

    .line 150
    iget-object v1, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string/jumbo v3, "ANNOUNCEMENT"

    .line 150
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    iget v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    if-lez v0, :cond_7

    .line 155
    iget v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    int-to-double v0, v0

    .line 154
    invoke-static {p1, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v0

    .line 161
    :cond_6
    :goto_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {p2, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 158
    :cond_7
    const-wide/high16 v0, 0x4042000000000000L    # 36.0

    .line 157
    invoke-static {p1, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v0

    goto :goto_3
.end method
