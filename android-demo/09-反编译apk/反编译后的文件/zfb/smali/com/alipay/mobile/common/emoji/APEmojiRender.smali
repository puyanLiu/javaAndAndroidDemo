.class public Lcom/alipay/mobile/common/emoji/APEmojiRender;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static renderEmoji(Landroid/content/Context;Landroid/text/Spannable;I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/alipay/mobile/common/emoji/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;III)V

    goto :goto_0
.end method

.method public static renderEmoji(Landroid/content/Context;Landroid/text/Spannable;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/emoji/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;III)I

    return-void
.end method

.method public static renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/common/emoji/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;III)I

    move-result v0

    goto :goto_0
.end method

.method public static renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;III)I
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    sub-int v1, v0, p3

    if-ltz p4, :cond_1

    if-lt p4, v1, :cond_4

    :cond_1
    :goto_1
    move v4, v3

    :goto_2
    if-ge p3, v0, :cond_7

    invoke-interface {p1, p3}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v1}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getsbcodePos(I)I

    move-result v5

    if-lez v5, :cond_5

    move v1, v2

    :goto_3
    move v9, v5

    move v5, v1

    move v1, v9

    :goto_4
    if-nez v1, :cond_2

    invoke-static {p1, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    invoke-static {v6}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {v6}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getFollowUnicode(I)I

    move-result v6

    if-lez v6, :cond_2

    add-int v7, p3, v5

    if-ge v7, v0, :cond_6

    add-int v7, p3, v5

    invoke-static {p1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    if-ne v7, v6, :cond_6

    add-int/2addr v5, v8

    :cond_2
    :goto_5
    if-lez v1, :cond_3

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "emoji/emoji_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ".png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, p2, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    new-instance v1, Lcom/alipay/mobile/common/emoji/EmojiImageSpan;

    invoke-direct {v1, v6}, Lcom/alipay/mobile/common/emoji/EmojiImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int v6, p3, v5

    const/16 v7, 0x21

    invoke-interface {p1, v1, p3, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v4, 0x1

    :goto_6
    move v4, v1

    :cond_3
    :goto_7
    add-int/2addr p3, v5

    goto/16 :goto_2

    :cond_4
    add-int v0, p3, p4

    goto/16 :goto_1

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    move v3, v4

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :cond_8
    move v1, v4

    goto :goto_6

    :cond_9
    move v1, v3

    move v5, v3

    goto/16 :goto_4
.end method
