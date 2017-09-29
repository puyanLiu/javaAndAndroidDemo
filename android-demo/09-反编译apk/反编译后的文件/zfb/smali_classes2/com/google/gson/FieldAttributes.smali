.class public final Lcom/google/gson/FieldAttributes;
.super Ljava/lang/Object;
.source "FieldAttributes.java"


# static fields
.field private static final ANNOTATION_CACHE:Lcom/google/gson/Cache;

.field private static final MAX_CACHE_PROPERTY_NAME:Ljava/lang/String; = "com.google.gson.annotation_cache_size_hint"


# instance fields
.field private annotations:Ljava/util/Collection;

.field private final declaredType:Ljava/lang/Class;

.field private final declaringClazz:Ljava/lang/Class;

.field private final field:Ljava/lang/reflect/Field;

.field private genericType:Ljava/lang/reflect/Type;

.field private final isSynthetic:Z

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final resolvedType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/gson/LruCache;

    invoke-static {}, Lcom/google/gson/FieldAttributes;->getMaxCacheSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/gson/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/gson/FieldAttributes;->ANNOTATION_CACHE:Lcom/google/gson/Cache;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->declaringClazz:Ljava/lang/Class;

    .line 66
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->declaredType:Ljava/lang/Class;

    .line 68
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gson/FieldAttributes;->isSynthetic:Z

    .line 69
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iput v0, p0, Lcom/google/gson/FieldAttributes;->modifiers:I

    .line 70
    iput-object p2, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    .line 71
    invoke-static {p2, p3}, Lcom/google/gson/FieldAttributes;->getTypeInfoForField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->resolvedType:Ljava/lang/reflect/Type;

    .line 72
    return-void
.end method

.method private static getAnnotationFromArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3

    .prologue
    .line 231
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 232
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 236
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getMaxCacheSize()I
    .locals 2

    .prologue
    .line 75
    :try_start_0
    const-string/jumbo v0, "com.google.gson.annotation_cache_size_hint"

    const-string/jumbo v1, "2000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 81
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method static getTypeInfoForField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 248
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/gson/FieldAttributes;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gson/FieldAttributes;->getAnnotationFromArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotations()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->annotations:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 161
    new-instance v1, Lcom/google/gson/Pair;

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->declaringClazz:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gson/FieldAttributes;->name:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/gson/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/google/gson/FieldAttributes;->ANNOTATION_CACHE:Lcom/google/gson/Cache;

    invoke-interface {v0, v1}, Lcom/google/gson/Cache;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->annotations:Ljava/util/Collection;

    .line 163
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->annotations:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->annotations:Ljava/util/Collection;

    .line 166
    sget-object v0, Lcom/google/gson/FieldAttributes;->ANNOTATION_CACHE:Lcom/google/gson/Cache;

    iget-object v2, p0, Lcom/google/gson/FieldAttributes;->annotations:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Lcom/google/gson/Cache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->annotations:Ljava/util/Collection;

    return-object v0
.end method

.method public final getDeclaredClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->declaredType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getDeclaredType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->genericType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->genericType:Ljava/lang/reflect/Type;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->genericType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->declaringClazz:Ljava/lang/Class;

    return-object v0
.end method

.method final getFieldObject()Ljava/lang/reflect/Field;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->name:Ljava/lang/String;

    return-object v0
.end method

.method final getResolvedType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->resolvedType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hasModifier(I)Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/gson/FieldAttributes;->modifiers:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isSynthetic()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/gson/FieldAttributes;->isSynthetic:Z

    return v0
.end method

.method final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    return-void
.end method
