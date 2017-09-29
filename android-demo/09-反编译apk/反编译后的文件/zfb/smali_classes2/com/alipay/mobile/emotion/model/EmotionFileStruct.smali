.class public Lcom/alipay/mobile/emotion/model/EmotionFileStruct;
.super Ljava/lang/Object;
.source "EmotionFileStruct.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appendSuffixToUrl(Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->suffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final emotionZipFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->zip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    if-nez p0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    sget-object v2, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->zip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    if-ne p3, v2, :cond_3

    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->suffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_3
    invoke-static {p3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->access$2(Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFolderPath(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;)Ljava/lang/String;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    sget-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->info:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    if-eq p3, v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->icon:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    if-ne p3, v0, :cond_5

    .line 152
    :cond_4
    invoke-virtual {p3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->suffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->suffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static final getEmotionFolderPath(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->folder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    if-eq p2, v1, :cond_3

    .line 115
    invoke-virtual {p2}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->folder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static padStart(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object p0

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-lt v0, p1, :cond_2

    .line 176
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
