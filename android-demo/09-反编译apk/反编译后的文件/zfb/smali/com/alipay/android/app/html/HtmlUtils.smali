.class public Lcom/alipay/android/app/html/HtmlUtils;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# direct methods
.method public static a(FLjava/lang/String;)I
    .locals 6

    .prologue
    const/16 v3, 0x24

    const/16 v2, 0x18

    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 21
    :try_start_0
    const-string/jumbo v4, "px"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "pt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 36
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 38
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 41
    :goto_1
    if-le v0, v3, :cond_2

    move v0, v3

    .line 42
    :cond_2
    if-ge v0, v2, :cond_3

    move v0, v2

    .line 43
    :cond_3
    add-int/lit8 v0, v0, 0xc

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 45
    :cond_4
    :goto_2
    return v0

    .line 27
    :catch_0
    move-exception v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 29
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_5
    move-object p1, v1

    goto :goto_0
.end method
