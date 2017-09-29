.class public Lcom/alipay/mobile/emotion/manager/EmotionParser;
.super Ljava/lang/Object;
.source "EmotionParser.java"


# static fields
.field public static final EGROUP_DEFAULT:I = 0x1

.field public static final EGROUP_WW:I = 0x0

.field public static final EMOTION_END_CHAR:C = ']'

.field public static final EMOTION_START_CHAR:C = '['

.field private static final mPattern:Ljava/util/regex/Pattern;

.field private static final sEmotionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->values()[Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/emotion/manager/EmotionParser;->sEmotionMapping:Ljava/util/HashMap;

    .line 41
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->getEmotionTextPatern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/manager/EmotionParser;->mPattern:Ljava/util/regex/Pattern;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->loadEmotion()V

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getEmotionBigResourceIdByText(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionParser;->sEmotionMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->resid()I

    move-result v0

    return v0
.end method

.method public static getEmotionIdentifier(Ljava/lang/String;)Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionParser;->sEmotionMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    return-object v0
.end method

.method public static getEmotionSmallResourceIdByText(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionParser;->sEmotionMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->smallresid()I

    move-result v0

    return v0
.end method

.method public static getEmotionTextPatern()Ljava/util/regex/Pattern;
    .locals 5

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->values()[Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    aget-object v4, v2, v0

    .line 58
    invoke-virtual {v4}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->key()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isEmotionIdentifier(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionParser;->sEmotionMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static linkEmotionForEditText(Landroid/content/Context;Landroid/widget/EditText;Ljava/lang/String;II)V
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 154
    if-lt p3, p4, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {p2}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->getEmotionIdentifier(Ljava/lang/String;)Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    move-result-object v3

    .line 158
    if-eqz v3, :cond_0

    .line 161
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt p4, v0, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 166
    :try_start_0
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {v3}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->smallresid()I

    move-result v3

    invoke-direct {v0, p0, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_1
    if-eqz v0, :cond_0

    .line 171
    const/16 v1, 0x21

    invoke-interface {v2, v0, p3, p4, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/emotion/manager/EmotionParser;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static loadEmotion()V
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->values()[Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 52
    return-void

    .line 49
    :cond_0
    aget-object v3, v1, v0

    .line 50
    sget-object v4, Lcom/alipay/mobile/emotion/manager/EmotionParser;->sEmotionMapping:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->key()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    sget-object v1, Lcom/alipay/mobile/emotion/manager/EmotionParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 110
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    return-object v0

    .line 111
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->getEmotionSmallResourceIdByText(Ljava/lang/String;)I

    move-result v2

    .line 113
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 114
    const/16 v5, 0x21

    .line 113
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 120
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    sget-object v1, Lcom/alipay/mobile/emotion/manager/EmotionParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 122
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    return-object v0

    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->getEmotionSmallResourceIdByText(Ljava/lang/String;)I

    move-result v2

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 126
    invoke-virtual {v2, v6, v6, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 128
    const/16 v5, 0x21

    .line 127
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 200
    .line 202
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 203
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move v0, p2

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    :cond_1
    if-lt v0, p2, :cond_2

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    :cond_2
    if-nez p3, :cond_4

    .line 220
    invoke-static {p0, p1}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 222
    :goto_1
    return-object v0

    .line 205
    :cond_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 206
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 207
    if-ge v3, p2, :cond_1

    .line 208
    if-lt v1, p2, :cond_0

    move v0, v1

    .line 211
    goto :goto_0

    .line 222
    :cond_4
    invoke-static {p0, p1, p3}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const v8, 0x420a6666    # 34.6f

    const v7, 0x41a4cccd    # 20.6f

    const/4 v6, 0x0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    sget-object v1, Lcom/alipay/mobile/emotion/manager/EmotionParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 137
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    return-object v0

    .line 138
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->getEmotionSmallResourceIdByText(Ljava/lang/String;)I

    move-result v2

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 141
    if-nez p2, :cond_1

    .line 142
    invoke-static {p0, v7}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    :goto_1
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 147
    const/16 v5, 0x21

    .line 146
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p0, v8}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 195
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
