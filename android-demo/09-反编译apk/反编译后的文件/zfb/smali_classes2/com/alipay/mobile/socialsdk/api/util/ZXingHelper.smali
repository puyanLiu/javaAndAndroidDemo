.class public Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;
.super Ljava/lang/Object;
.source "ZXingHelper.java"


# static fields
.field static final a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "ZXingHelper"

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->b:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 30
    if-eqz p0, :cond_0

    const/16 v1, 0x2710

    move/from16 v0, p2

    if-gt v0, v1, :cond_0

    const/16 v1, 0x2710

    move/from16 v0, p3

    if-le v0, v1, :cond_2

    .line 31
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->b:Ljava/lang/String;

    const-string/jumbo v3, "out encodeAsBitmapDecimal too big"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    .line 110
    :cond_1
    :goto_0
    return-object v1

    .line 35
    :cond_2
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 37
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p4

    invoke-virtual {v6, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 41
    :try_start_0
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 42
    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v10, v1

    .line 53
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ZXingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 54
    const-string/jumbo v4, " img_width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " img_height"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 57
    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    .line 58
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 59
    const/4 v1, 0x0

    move v5, v1

    :goto_2
    if-lt v5, v8, :cond_7

    .line 67
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 66
    invoke-static {v4, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 70
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    if-eqz p5, :cond_3

    .line 72
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3e321643

    mul-float/2addr v6, v7

    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v7, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/RectF;

    int-to-float v11, v3

    sub-float/2addr v11, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    int-to-float v12, v5

    sub-float/2addr v12, v6

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    int-to-float v3, v3

    add-float/2addr v3, v6

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v3, v13

    int-to-float v5, v5

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-direct {v9, v11, v12, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v7, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 75
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo p0, ""

    .line 77
    :cond_4
    :goto_3
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 78
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "==="

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "contents = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v2, 0x0

    .line 85
    :goto_4
    if-lt v2, v4, :cond_b

    .line 90
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    const/4 v10, 0x0

    div-int/lit8 v2, v4, 0x10

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x4

    int-to-float v11, v2

    int-to-float v12, v4

    int-to-float v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    div-int/lit8 v2, v4, 0x10

    int-to-float v2, v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    const/high16 v2, -0x1000000

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 100
    div-int/lit8 v2, v4, 0x6

    int-to-float v5, v2

    .line 101
    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v2, v4

    .line 105
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_1

    .line 106
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 107
    int-to-float v7, v2

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    add-int/lit8 v10, v8, -0x4

    int-to-float v10, v10

    invoke-virtual {v9, v6, v7, v10, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 45
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v10, v1

    goto/16 :goto_1

    .line 48
    :catch_0
    move-exception v1

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->b:Ljava/lang/String;

    const-string/jumbo v3, "out 2 encodeAsBitmapDecimal"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 60
    :cond_7
    mul-int v6, v5, v4

    .line 61
    const/4 v1, 0x0

    move v3, v1

    :goto_6
    if-lt v3, v4, :cond_8

    .line 59
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_2

    .line 62
    :cond_8
    add-int v7, v6, v3

    invoke-virtual {v10, v3, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v1, -0x1000000

    :goto_7
    aput v1, v2, v7

    .line 61
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 62
    :cond_9
    const v1, 0xffffff

    goto :goto_7

    .line 75
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    const-string/jumbo v5, " "

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x8

    const-string/jumbo v5, " "

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x4

    const-string/jumbo v5, " "

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "facepayment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " format code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    goto/16 :goto_3

    .line 84
    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZIILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 147
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "out for iv.getWidth() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-static {p1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    .line 154
    if-eqz p3, :cond_3

    move-object v0, p0

    move v2, p5

    move v3, p4

    move-object v4, p6

    move-object v5, p7

    .line 155
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    .line 158
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 159
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 160
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 161
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 162
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v0, v1, :cond_4

    if-le p4, p5, :cond_4

    move v2, p5

    :goto_1
    move-object v0, p0

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 171
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 172
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move v2, p4

    goto :goto_1
.end method

.method public static genCodeToImageView(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 194
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->zhi:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 195
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sget-object v6, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZIILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Landroid/graphics/Bitmap;)V

    .line 196
    return-void
.end method

.method public static genCodeToImageView(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZLandroid/content/Context;)V
    .locals 8

    .prologue
    .line 181
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->zhi:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 182
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sget-object v6, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZIILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Landroid/graphics/Bitmap;)V

    .line 183
    return-void
.end method

.method public static genCodeToImageView(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZLandroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sget-object v6, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/socialsdk/api/util/ZXingHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZIILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Landroid/graphics/Bitmap;)V

    .line 190
    return-void
.end method
