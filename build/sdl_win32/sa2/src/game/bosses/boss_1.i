# 0 "src/game/bosses/boss_1.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/bosses/boss_1.c"
# 1 "include/core.h" 1




# 1 "/usr/share/mingw-w64/include/string.h" 1 3
# 9 "/usr/share/mingw-w64/include/string.h" 3
# 1 "/usr/share/mingw-w64/include/crtdefs.h" 1 3
# 10 "/usr/share/mingw-w64/include/crtdefs.h" 3
# 1 "/usr/share/mingw-w64/include/corecrt.h" 1 3
# 10 "/usr/share/mingw-w64/include/corecrt.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw.h" 1 3
# 10 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw_mac.h" 1 3
# 98 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
             
# 107 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
             
# 306 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
       
# 384 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
       
# 11 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 1 "/usr/share/mingw-w64/include/_mingw_secapi.h" 1 3
# 12 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 282 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/vadefs.h" 1 3
# 9 "/usr/share/mingw-w64/include/vadefs.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw.h" 1 3
# 661 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/sdks/_mingw_ddk.h" 1 3
# 662 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 10 "/usr/share/mingw-w64/include/vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 24 "/usr/share/mingw-w64/include/vadefs.h" 3
  
# 24 "/usr/share/mingw-w64/include/vadefs.h" 3
 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 103 "/usr/share/mingw-w64/include/vadefs.h" 3
#pragma pack(pop)
# 283 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 580 "/usr/share/mingw-w64/include/_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}
# 601 "/usr/share/mingw-w64/include/_mingw.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code)
{

  __asm__ __volatile__("int {$}0x29"::"c"(code));
# 615 "/usr/share/mingw-w64/include/_mingw.h" 3
  __builtin_unreachable();
}
# 641 "/usr/share/mingw-w64/include/_mingw.h" 3
const char *__mingw_get_crt_info (void);
# 11 "/usr/share/mingw-w64/include/corecrt.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long intptr_t;
# 75 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long ptrdiff_t;
# 98 "/usr/share/mingw-w64/include/corecrt.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "/usr/share/mingw-w64/include/corecrt.h" 3
typedef __time64_t time_t;
# 430 "/usr/share/mingw-w64/include/corecrt.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {





  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;

} threadlocinfo;
# 501 "/usr/share/mingw-w64/include/corecrt.h" 3
#pragma pack(pop)
# 11 "/usr/share/mingw-w64/include/crtdefs.h" 2 3
# 10 "/usr/share/mingw-w64/include/string.h" 2 3
# 45 "/usr/share/mingw-w64/include/string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);



  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;

  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;







# 1 "/usr/share/mingw-w64/include/sec_api/string_s.h" 1 3
# 9 "/usr/share/mingw-w64/include/sec_api/string_s.h" 3
# 1 "/usr/share/mingw-w64/include/string.h" 1 3
# 10 "/usr/share/mingw-w64/include/sec_api/string_s.h" 2 3
# 24 "/usr/share/mingw-w64/include/sec_api/string_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
 
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) strnlen_s(const char * _src, size_t _count) {
    return _src ? strnlen(_src, _count) : 0;
  }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
  ;
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val, size_t _Count,_locale_t _Locale);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }
# 195 "/usr/share/mingw-w64/include/string.h" 2 3
# 6 "include/core.h" 2


# 1 "include/global.h" 1



# 1 "include/config.h" 1
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1




# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 1 3 4
# 1 "/usr/share/mingw-w64/include/stddef.h" 1 3 4
# 18 "/usr/share/mingw-w64/include/stddef.h" 3 4
  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);
# 424 "/usr/share/mingw-w64/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 2 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 2 3 4
# 6 "include/gba/defines.h" 2
# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 3 4
# 1 "/usr/share/mingw-w64/include/stdint.h" 1 3 4
# 32 "/usr/share/mingw-w64/include/stdint.h" 3 4
# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 1 3 4
# 1 "/usr/share/mingw-w64/include/stddef.h" 1 3 4
# 2 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 2 3 4
# 33 "/usr/share/mingw-w64/include/stdint.h" 2 3 4


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 10 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 2 3 4
# 7 "include/gba/defines.h" 2
# 56 "include/gba/defines.h"

# 56 "include/gba/defines.h"
extern uint8_t VRAM[(0x18000 + (0x800 * (12)))];
# 65 "include/gba/defines.h"
extern struct SoundMixerState *SOUND_INFO_PTR;
extern uint16_t INTR_CHECK;
extern void (*INTR_VECTOR)(void);

extern uint8_t EWRAM_START[0x40000];
extern uint8_t IWRAM_START[0x7E00];
extern uint16_t PLTT[0x400/sizeof(uint16_t)];


extern uint8_t OAM[(128*0xC)];
# 131 "include/gba/defines.h"
typedef uint32_t winreg_t;
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 13 "include/gba/io_reg.h"
extern unsigned char REG_BASE[0x400];
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1
# 23 "include/gba/types.h"
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;




typedef u16 MetatileIndexType;
# 47 "include/gba/types.h"
typedef u16 int_vcount;




typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};
# 183 "include/gba/types.h"
typedef struct __attribute__((packed)) OamDataShort { s16 x; s16 y; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 matrixNum:5; u32 size:2; u32 padding:17; u16 tileNum:10; u16 priority:2; u16 paletteNum:4; } OamDataShort;
# 201 "include/gba/types.h"
  ;

typedef union {
    struct {
               s16 x;
               s16 y;

               u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

               u32 matrixNum:5;
               u32 size:2;
               u32 padding:17;

               u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;

               u16 fractional:8;
             u16 integer:7;
             u16 sign:1;
    } split;

    struct {
        s16 x;
        s16 y;
        u16 attr0;
        u16 attr1;
        u16 attr2;
        u16 affineParam;
    } all;

    u16 raw[6];
} OamData;
# 308 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioNormalCnt
{
    u16 sck_I_O:1;
    u16 sck:1;
    u16 ackRecv:1;
    u16 ackSend:1;
    u16 unused_6_4:3;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 362 "include/gba/types.h"
struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 387 "include/gba/types.h"
struct SioUartCnt
{
    u16 baudRate:2;
    u16 ctsEnable:1;
    u16 paritySelect:1;
    u16 transDataFull:1;
    u16 recvDataEmpty:1;
    u16 error:1;
    u16 length:1;
    u16 fifoEnable:1;
    u16 parityEnable:1;
    u16 transEnable:1;
    u16 recvEnable:1;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 415 "include/gba/types.h"
struct JoyCnt
{
    u8 ifReset:1;
    u8 ifRecv:1;
    u8 ifSend:1;
    u8 unused_5_3:3;
    u8 ifEnable:1;
    u8 unused_7:1;
};


struct JoyStat
{
    u8 unused_0:1;
    u8 recv:1;
    u8 unused_2:1;
    u8 send:1;
    u8 flags:2;
    u8 unused_7_6:2;
};


struct RCnt
{
    u8 sc:1;
    u8 sd:1;
    u8 si:1;
    u8 so:1;
    u8 sc_i_o:1;
    u8 sd_i_o:1;
    u8 si_i_o:1;
    u8 so_i_o:1;
    u8 ifEnable:1;
    u8 unused_13_9:5;
    u8 sioModeMaster:2;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    u8 *boot_srcp;
    u8 *boot_endp;
    u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
typedef struct {
    u32 srcLength : 16;
    u32 srcWidth : 8;
    u32 dstWidth : 8;
} BitUnPackData;

void SoftReset(u32 resetFlags);
void SoftResetExram(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const void *src, void *dest);

void LZ77UnCompVram(const void *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);
# 72 "include/gba/syscall.h"
void SoundBiasReset(void);

void SoundBiasSet(void);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1



# 1 "include/gba/cpuset_macros.h" 1
# 5 "include/gba/macro.h" 2
# 1 "include/gba/dma_macros.h" 1



# 1 "include/config.h" 1
# 5 "include/gba/dma_macros.h" 2
# 16 "include/gba/dma_macros.h"
extern void DmaSet(int dmaNum, const void *src, void *dest, u32 control);
# 78 "include/gba/dma_macros.h"
extern void DmaStop(int dmaNum);
# 172 "include/gba/dma_macros.h"
extern void DmaWait(int dmaNum);
# 6 "include/gba/macro.h" 2
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 13 "include/gba/isagbprint.h"
void AGBPrintInit(void);
void AGBPutc(const char cChr);
void AGBPrint(const char *pBuf);
void AGBPrintf(const char *pBuf, ...);
void AGBPrintFlush1Block(void);
void AGBPrintFlush(void);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
# 11 "include/gba/gba.h" 2
# 6 "include/global.h" 2
# 21 "include/global.h"
void *Platform_malloc(size_t numBytes);
void *Platform_realloc(void *ptr, size_t numBytes);
void Platform_free(void *ptr);
# 33 "include/global.h"
typedef void (*VoidFn)(void);
# 301 "include/global.h"
typedef struct {
    s16 x;
    s16 y;
} Vec2_16;

typedef struct {
    s32 x;
    s32 y;
} Vec2_32;

typedef struct {
    u8 reserved : 4;
    u8 compressedType : 4;
    u32 size : 24;
    void *data;
} RLCompressed;

struct BlendRegs {
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};







typedef struct {
               u16 pa, pb, pc, pd;
               u32 x, y;
} BgAffineReg;


typedef void (*HBlankIntrFunc)(int_vcount vcount);
typedef void (*IntrFunc)(void);

extern void *iwram_end;
extern void *ewram_end;

extern void *rom_footer;
# 9 "include/core.h" 2
# 1 "include/sprite.h" 1




# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 6 "include/sprite.h" 2

typedef u16 AnimId;

struct GraphicsData {
               const void *src;
               void *dest;
               u16 size;
               AnimId anim;
};
# 66 "include/sprite.h"
typedef struct {
               struct GraphicsData graphics;
# 81 "include/sprite.h"
               u16 *layoutVram;



               const u16 *layout;




               u16 xTiles;
               u16 yTiles;

               u16 unk18;
               u16 unk1A;
               u16 tilemapId;
               u16 unk1E;

               u16 unk20;
               u16 unk22;
               u16 unk24;




               u16 targetTilesX;
               u16 targetTilesY;

               u8 paletteOffset;
               u8 animFrameCounter;
               u8 animDelayCounter;

               u16 flags;


               u16 scrollX;
               u16 scrollY;
               u16 prevScrollX;
               u16 prevScrollY;


               const MetatileIndexType *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
} Background;

typedef struct {






               u8 flip;



               u8 oamIndex;




               u16 numSubframes;


               u16 width;

               u16 height;

               s16 offsetX;
               s16 offsetY;
} SpriteOffset;





typedef struct {

               s32 index;


               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Hitbox;





typedef struct {
               struct GraphicsData graphics;
               const SpriteOffset *dimensions;


               u32 frameFlags;
# 195 "include/sprite.h"
               u16 animCursor;

               s16 x;
               s16 y;

               u16 oamFlags;

               s16 qAnimDelay;
               u16 prevAnim;
               u8 variant;
               u8 prevVariant;


               u8 animSpeed;

               u8 oamBaseIndex;
               u8 numSubFrames;
               u8 palId;
               Hitbox hitboxes[1];
} Sprite ;


typedef struct {
    Sprite s;
    Hitbox hb1;
} Sprite2;


typedef struct {
    Sprite s;
    Hitbox hb1;
    Hitbox hb2;
} Sprite3;

typedef struct {
               u16 rotation;
               s16 qScaleX;
               s16 qScaleY;
               s16 x;
               s16 y;
} SpriteTransform;

typedef struct {
               s16 unk0[4];
               s16 qDirX;
               s16 qDirY;

               s16 unkC[2];

               s32 posX;
               s32 posY;

               s16 unk18[2][2];
               u16 affineIndex;
} UnkSpriteStruct;

typedef struct {
               u32 numTiles;
               AnimId anim;
               u8 variant;
} TileInfo;


typedef struct {
               void *tiles;
               AnimId anim;
               u8 variant;
} TileInfoPtr;

typedef struct __attribute__((packed)) TileInfo16 { u16 numTiles; AnimId anim; u16 variant; } TileInfo16;



  ;

extern const u8 gOamShapesSizes[12][2];

typedef enum {
    ACMD_RESULT__ANIM_CHANGED = -1,
    ACMD_RESULT__ENDED = 0,
    ACMD_RESULT__RUNNING = +1,
} AnimCmdResult;

AnimCmdResult UpdateSpriteAnimation(Sprite *);

void DisplaySprite(Sprite *);
void DrawBackground(Background *);
bool32 sub_8002B20(void);
bool32 sub_80039E4(void);
bool32 sub_8004010(void);
void ProcessOamBuffers(void);
OamData *OamMalloc(u8 order);

void TransformSprite(Sprite *, SpriteTransform *);
void UnusedTransform(Sprite *, SpriteTransform *);
void sub_8004E14(Sprite *, SpriteTransform *);

void sub_8003EE4(u16 p0, s16 p1, s16 p2, s16 p3, s16 p4, s16 p5, s16 p6, BgAffineReg *affine);
void sub_8006228(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);
void sub_80064A8(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);

s32 UpdateSpriteAnimation_BG(Sprite *);
void DisplaySprite_BG(Sprite *);
void sub_80047A0(u16, s16, s16, u16);

s16 sub_8004418(s16 x, s16 y);
void numToASCII(u8 digits[5], u16 number);
# 10 "include/core.h" 2
# 1 "include/task.h" 1





struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task *);
# 25 "include/task.h"
typedef struct Task *TaskPtr;
typedef TaskPtr TaskPtr32;




typedef void *IwramData;
# 55 "include/task.h"
typedef struct Task {
               TaskPtr parent;
               TaskPtr prev;
               TaskPtr next;
               IwramData data;

    u32 dataSize;

               TaskMain main;
               TaskDestructor dtor;
               u16 priority;
               u16 flags;



               u8 unk14;
               u8 unk15;
               u16 unk16;
               u16 unk18;





} Task;





struct IwramNode;

typedef struct IwramNode *IwramNodePtr;
typedef IwramNodePtr IwramNodePtr32;




struct IwramNode {
    IwramNodePtr next;
    s16 state;

    u8 __attribute__((aligned(sizeof(void *)))) space[0];
};
# 113 "include/task.h"
extern struct Task gTasks[128];
extern struct Task gEmptyTask;
extern struct Task *gTaskPtrs[128];
extern s32 gNumTasks;



extern struct Task *gNextTask;
extern struct Task *gCurTask;
extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

u32 TasksInit(void);
void TasksExec(void);
# 141 "include/task.h"
struct Task *TaskCreate(TaskMain taskMain, u16 structSize, u16 priority, u16 flags, TaskDestructor taskDestructor);


void TaskDestroy(struct Task *);
void *IwramMalloc(u16);
void IwramFree(void *p);
void TasksDestroyInPriorityRange(u16, u16);
# 11 "include/core.h" 2
# 1 "include/flags.h" 1
# 23 "include/flags.h"
extern u32 gFlags;
# 12 "include/core.h" 2
# 1 "include/tilemap.h" 1
# 10 "include/tilemap.h"
typedef struct {
    u16 index : 10;
    u16 xFlip : 1;
    u16 yFlip : 1;
    u16 pal : 4;
} Tile;

typedef struct {
               u16 xTiles;
               u16 yTiles;
               u16 animTileSize;
               u8 animFrameCount;
               u8 animDelay;
               const u8 *tiles;
               u32 tilesSize;
               const u16 *palette;
               u16 palOffset;
               u16 palLength;



               const u16 *map;
} Tilemap;

struct MapHeader {
               Tilemap tileset;
               const u16 *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
};
# 13 "include/core.h" 2
# 1 "include/input_recorder.h" 1
# 12 "include/input_recorder.h"
struct InputRecorder {
               s32 playbackHead;
               s32 recordHead;
               u8 mode;
};

void InputRecorderResetRecordHead(void);
void InputRecorderResetPlaybackHead(void);
void InputRecorderLoadTape(void);
u16 InputRecorderRead(void);
void InputRecorderWrite(u16);
# 14 "include/core.h" 2
# 1 "include/animation_commands.h" 1
# 9 "include/animation_commands.h"
typedef AnimCmdResult (*AnimationCommandFunc)(void *cursor, Sprite *sprite);

typedef struct {
               s32 cmdId;



               s32 tileIndex;

               u32 numTilesToCopy;
} ACmd_GetTiles;

typedef struct {
               s32 cmdId;

               s32 palId;
               u16 numColors;
               u16 insertOffset;
} ACmd_GetPalette;

typedef struct {
               s32 cmdId;

               s32 offset;
} ACmd_JumpBack;

typedef struct {
               s32 cmdId;
} ACmd_4;

typedef struct {
               s32 cmdId;

               u16 songId;
} ACmd_PlaySoundEffect;


typedef struct {
               s32 cmdId;

               Hitbox hitbox;
} ACmd_Hitbox;

typedef struct {
               s32 cmdId;

               u16 x;
               u16 y;
} ACmd_TranslateSprite;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
} ACmd_8;

typedef struct {
               s32 cmdId;

               AnimId animId;
               u16 variant;
} ACmd_SetIdAndVariant;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
               s32 unkC;
} ACmd_10;

typedef struct {
               s32 cmdId;

               s32 priority;
} ACmd_SetSpritePriority;

typedef struct {
               s32 cmdId;

               s32 orderIndex;
} ACmd_SetOamOrder;

typedef struct {

    s32 delay;


    s32 index;
} ACmd_ShowFrame;

typedef union {
    s32 id;

    ACmd_GetTiles tiles;
    ACmd_GetPalette pal;
    ACmd_JumpBack jump;
    ACmd_4 end;
    ACmd_PlaySoundEffect sfx;
    ACmd_Hitbox _6;
    ACmd_TranslateSprite translate;
    ACmd_8 _8;
    ACmd_SetIdAndVariant setAnimId;
    ACmd_10 _10;
    ACmd_SetSpritePriority _11;
    ACmd_SetOamOrder setOamOrder;

    ACmd_ShowFrame show;
} ACmd;

u32 Base10DigitsToHexNibbles(u16 num);
# 15 "include/core.h" 2

struct MultiSioData_0_0 {

    u16 unk0;

    u8 unk2;

    u8 unk3;
    u32 unk4;
    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_1 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};
struct MultiSioData_0_2 {

    u8 unk0;
    u8 filler1;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_3 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u32 unk8;
    u16 unkC;



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_4 {

    u16 unk0;

    s16 x;
    s16 y;
    u16 unk6;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;



    u8 unkE;
    u8 numRings;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
};

union MultiSioData {
    struct MultiSioData_0_0 pat0;
    struct MultiSioData_0_1 pat1;
    struct MultiSioData_0_2 pat2;
    struct MultiSioData_0_3 pat3;
    struct MultiSioData_0_4 pat4;
};







typedef u32 collPxDim_t;



typedef struct {
               const s8 *height_map;
               const u8 *tile_rotation;
               const u16 *metatiles;
               const MetatileIndexType *map[2];
               const u16 *flags;
               u16 levelX, levelY;
               collPxDim_t pxWidth, pxHeight;


} Collision;

struct Unk_03003674_1_Sub {
    u16 unk0, unk2, unk4, unk6;
    s16 unk8, unkA;
};

struct Unk_03003674_1_Full {
    struct Unk_03003674_1_Sub sub;
    u32 unkC;
};

union Unk_03003674_1 {
    const struct Unk_03003674_1_Sub *sub;
    const struct Unk_03003674_1_Full *full;
};

struct Unk_03003674 {
    const union Unk_03003674_0 *const *unk0;
    const union Unk_03003674_1 *unk4;
    const u16 *const *unk8;
    const void *unkC;
    const void *unk10;
    const void *unk14;
    const s32 *unk18;
};

struct SpriteTables {
               const ACmd **const *animations;
               const SpriteOffset *const *dimensions;
               const u16 **const oamData;
               const u16 *const palettes;
               const u8 *const tiles_4bpp;
               const u8 *const tiles_8bpp;
};
# 197 "include/core.h"
extern u32 gFlags;
extern u32 gFlagsPreVBlank;

extern u32 gFrameCount;
# 215 "include/core.h"
extern IntrFunc gIntrTable[16];
extern IntrFunc const gIntrTableTemplate[14];
extern u32 gIntrMainBuf[0x80];

extern struct Task *gCurTask;
extern struct Task gTasks[128];
extern struct Task *gTaskPtrs[128];
extern struct Task *gNextTask;
extern struct Task gEmptyTask;
extern s32 gNumTasks;

extern u16 gInput;
extern u16 gPrevInput;
extern u16 gPhysicalInput;
extern u16 gReleasedKeys;
extern u16 gRepeatedKeys;
extern u16 gPressedKeys;
extern u8 gKeysFirstRepeatIntervals[10];
extern u8 gRepeatedKeysTestCounter[10];
extern u8 gKeysContinuedRepeatIntervals[10];

extern const u8 *gInputPlaybackData;
extern struct InputRecorder gInputRecorder;
extern u16 *gInputRecorderTapeBuffer;

extern union MultiSioData gMultiSioSend;
extern union MultiSioData gMultiSioRecv[4];
extern u32 gMultiSioStatusFlags;
extern bool8 gMultiSioEnabled;

extern HBlankIntrFunc gHBlankIntrs[4];
extern HBlankIntrFunc gHBlankCallbacks[4];
extern u8 gNumHBlankCallbacks;
extern u8 gNumHBlankIntrs;

extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

extern void *gVramHeapStartAddr;
extern u16 gVramHeapMaxTileSlots;
extern u16 gVramHeapState[((0x18000 + (0x800 * (12))) - 0x10000) / (4 * 32)];

extern bool8 gExecSoundMain;

extern u16 gDispCnt;
# 273 "include/core.h"
extern winreg_t gWinRegs[6];
extern struct BlendRegs gBldRegs;
extern BgAffineReg gBgAffineRegs[2];
extern u16 gObjPalette[16 * 16u];
extern u16 gBgPalette[16 * 16u];

extern u16 gBgCntRegs[4];



extern s16 gBgScrollRegs[4][2];

extern OamData gOamMallocBuffer[128];
extern OamData gOamBuffer[128];


extern int_vcount gBgOffsetsBuffer[2][240][4];
extern Background *gBackgroundsCopyQueue[16];


extern void *gBgOffsetsHBlankPrimary;

extern u16 gUnknown_030017F0;
extern Vec2_16 gSpriteOffset;
extern u8 gOamMallocOrders_StartIndex[32];
extern IntrFunc gVBlankCallbacks[4];

extern u8 gOamFreeIndex;
extern u16 gUnknown_03001944;
extern u8 gNumVBlankIntrs;
extern s16 gUnknown_0300194C;

extern Tilemap **gTilemapsRef;
extern u8 gBgSprites_Unknown2[4][4];
extern u8 gBgSprites_Unknown1[4];
# 317 "include/core.h"
extern struct GraphicsData *gVramGraphicsCopyQueue[32];
extern u8 gVramGraphicsCopyQueueIndex;
# 334 "include/core.h"
extern struct GraphicsData gVramGraphicsCopyQueueBuffer[32];
# 357 "include/core.h"
extern void *gBgOffsetsHBlankSecondary;
extern void *gBgOffsetsSecondary;

extern s16 gMosaicReg;
extern u8 gUnknown_030026F4;

extern s16 gUnknown_03002820;
extern u8 gVCountSetting;
extern void *gHBlankCopyTarget;
extern u8 gBackgroundsCopyQueueIndex;
extern u8 gHBlankCopySize;
extern u16 gUnknown_03002A8C;


extern u8 gOamFirstPausedIndex;
extern u8 gBackgroundsCopyQueueCursor;
extern Sprite *gBgSprites[16];
extern u8 gNumVBlankCallbacks;
extern void *gBgOffsetsPrimary;
extern u16 gUnknown_03004D58;
extern u8 gVramGraphicsCopyCursor;
extern u8 gOamMallocOrders_EndIndex[0x20];
extern u8 gBgSpritesCount;
extern u16 gUnknown_03005394;
extern u16 gUnknown_03005398;
extern IntrFunc gVBlankIntrs[4];
extern s32 gPseudoRandom;
extern u8 gOamMallocCopiedOrder[128];
extern struct MultiBootParam gMultiBootParam;

extern const struct SpriteTables *gRefSpriteTables;

void EngineInit(void);
void EngineMainLoop(void);
# 2 "src/game/bosses/boss_1.c" 2
# 1 "include/flags.h" 1
# 3 "src/game/bosses/boss_1.c" 2
# 1 "include/sprite.h" 1
# 4 "src/game/bosses/boss_1.c" 2
# 1 "include/task.h" 1
# 5 "src/game/bosses/boss_1.c" 2
# 1 "include/malloc_vram.h" 1
# 6 "src/game/bosses/boss_1.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 7 "src/game/bosses/boss_1.c" 2
# 1 "include/lib/m4a/m4a.h" 1



# 1 "include/lib/m4a/m4a_internal.h" 1



# 1 "include/gba/gba.h" 1
# 5 "include/lib/m4a/m4a_internal.h" 2
# 109 "include/lib/m4a/m4a_internal.h"
struct MP2KTrack;
struct MP2KPlayerState;

typedef void (*MP2KEventNoteFunc)(u8, struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*MP2KEventFunc)(struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*MPlayMainFunc)(struct MP2KPlayerState *);

struct MixerSource {
    u8 status;
    u8 type;
    u8 rightVol;
    u8 leftVol;

    union {
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeGoal;
            u8 envelopeCtr;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u8 padding6;
            u8 sustainGoal;
            u8 nrx4;
            u8 pan;

            u8 panMask;
            u8 cgbStatus;
            u8 length;
            u8 sweep;

            u32 freq;
        } cgb;
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeVolR;
            u8 envelopeVolL;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u32 ct;
            float fw;

            u32 freq;
        } sound;
    } data;

    void *wav;
    void *current;

    struct MP2KTrack *track;
    struct MixerSource *prev;
    struct MixerSource *next;
    u32 padding7;
    u32 blockCount;
};

struct SoundMixerState {


    u32 lockStatus;

    vu8 dmaCounter;


    u8 reverb;
    u8 numChans;
    u8 masterVol;
    u8 freqOption;

    u8 extensionFlags;
    u8 cgbCounter15;
    u8 framesPerDmaCycle;
    u8 maxScanlines;
    u8 gap[3];
    s32 samplesPerFrame;
    s32 sampleRate;



    float sampleRateReciprocal;

    struct MixerSource *cgbChans;
    MPlayMainFunc MPlayMainHead;
    struct MP2KPlayerState *musicPlayerHead;
    CgbSoundFunc CgbSound;
    CgbOscOffFunc CgbOscOff;
    MidiKeyToCgbFreqFunc MidiKeyToCgbFreq;
    void **MPlayJumpTable;
    MP2KEventNoteFunc plynote;
    ExtVolPitFunc ExtVolPit;
    void *reserved2;
    void *reserved3;
    void *reversed4;
    void *reserved5;
    struct MixerSource chans[12];



    float pcmBuffer[4907 * 2];

};

struct MP2KVoiceGroup {
    u8 type;
    u8 drumKey;
    u8 cgbLength;
    u8 pan_sweep;
    union {
        struct {
            struct WaveData *wav;
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
        } sound;
        struct {
            struct MP2KVoiceGroup *group;
            u8 *keySplitTable;
        } keySplit;
    } data;
};

struct WaveData {
    u16 type;
    u16 status;

    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};

struct MP2KSongHeader {
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct MP2KVoiceGroup *voicegroup;
    u8 *part[1];
};

struct MP2KTrack {
    u8 status;
    u8 wait;
    u8 patternLevel;
    u8 repeatCount;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    s8 keyShiftCalculated;
    u8 pitchCalculated;
    s8 keyShift;
    s8 keyShiftPublic;
    s8 tune;
    u8 pitchPublic;
    s8 bend;
    u8 bendRange;
    u8 volRightCalculated;
    u8 volLeftCalculated;
    u8 vol;
    u8 volPublic;
    s8 pan;
    s8 panPublic;
    s8 modCalculated;
    u8 modDepth;
    u8 modType;
    u8 lfoSpeed;
    u8 lfoSpeedCounter;
    u8 lfoDelay;
    u8 lfoDelayCounter;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;

    struct MixerSource *chan;
    struct MP2KVoiceGroup voicegroup;

    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};

struct MP2KPlayerState {
    struct MP2KSongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    bool8 checkSongPriority;
    u32 clock;
    u8 padding[8];
    u8 *memAccArea;
    u16 tempoRawBPM;
    u16 tempoScale;
    u16 tempoInterval;
    u16 tempoCounter;
    u16 fadeInterval;
    u16 fadeCounter;
    u16 fadeOV;
    struct MP2KTrack *tracks;
    struct MP2KVoiceGroup *voicegroup;
    u32 lockStatus;
    MPlayMainFunc nextPlayerFunc;
    struct MP2KPlayerState *nextPlayer;
};

struct MusicPlayer {
    struct MP2KPlayerState *info;
    struct MP2KTrack *track;
    u8 numTracks;
    u16 unk_A;
};

struct Song {
    struct MP2KSongHeader *header;
    u16 ms;
    u16 me;
};

typedef void (*XcmdFunc)(struct MP2KPlayerState *, struct MP2KTrack *);

extern char SoundMainRAM[];
extern u8 gMPlayMemAccArea[];
extern void *gMPlayJumpTable[];
extern struct MixerSource gCgbChans[];

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];
extern const XcmdFunc gXcmdTable[];

extern const u8 gClockTable[];
extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];
extern void *const gMPlayJumpTableTemplate[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];
extern const u8 gCgb3Vol[];






u32 MidiKeyToFreq(struct WaveData *wav, u8 key, u8 fineAdjust);
u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void *ptr);
void TrackStop(struct MP2KPlayerState *player, struct MP2KTrack *track);
void MP2KPlayerMain(struct MP2KPlayerState *);

void ClearChain(struct MixerSource *chan);
void MP2KClearChain(struct MixerSource *chan);

void MPlayContinue(struct MP2KPlayerState *mplayInfo);
void MPlayStart(struct MP2KPlayerState *mplayInfo, struct MP2KSongHeader *songHeader);
void MPlayStop(struct MP2KPlayerState *mplayInfo);
void FadeOutBody(struct MP2KPlayerState *mplayInfo);
void TrkVolPitSet(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track);
void MPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void Clear64byte(void *addr);
void SoundInit(struct SoundMixerState *soundInfo);
void MPlayExtender(struct MixerSource *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *tracks, u8 trackCount);
void CgbSound(void);
void CgbOscOff(u8);
void CgbModVol(struct MixerSource *chan);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void MPlayJumpTableCopy(void **mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MP2KTrack *track);
void m4aMPlayModDepthSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 lfoSpeed);


void MP2K_event_fine(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_goto(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_patt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_rept(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_memacc(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_prio(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tempo(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_keysh(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_voice(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_vol(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pan(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bendr(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfos(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfodl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_mod(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_modt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tune(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_port(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_endtie(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_nxx(u8 clock, struct MP2KPlayerState *, struct MP2KTrack *);


void MP2K_event_xxx(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xwave(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xtype(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xatta(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xdeca(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xsust(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xrele(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecv(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xleng(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xswee(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0C(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0D(struct MP2KPlayerState *, struct MP2KTrack *);
# 5 "include/lib/m4a/m4a.h" 2

extern struct SoundMixerState gSoundInfo;

extern struct MP2KPlayerState gMPlayInfo_BGM;
extern struct MP2KPlayerState gMPlayInfo_SE1;
extern struct MP2KPlayerState gMPlayInfo_SE2;
extern struct MP2KPlayerState gMPlayInfo_SE3;

void m4aSoundVSync(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16);
void m4aSongNumStartOrChange(u16);
void m4aSongNumStartOrContinue(u16);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayAllContinue(void);
void m4aMPlayContinue(struct MP2KPlayerState *mplayInfo);
void m4aMPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MP2KPlayerState *mplayInfo);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
# 8 "src/game/bosses/boss_1.c" 2

# 1 "include/game/sa1_sa2_shared/collision.h" 1




# 1 "include/rect.h" 1



typedef struct {
               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Rect8;
# 6 "include/game/sa1_sa2_shared/collision.h" 2
# 1 "include/game/sa1_sa2_shared/camera.h" 1




# 1 "include/tilemap.h" 1
# 6 "include/game/sa1_sa2_shared/camera.h" 2




typedef s32 CamCoord;
# 22 "include/game/sa1_sa2_shared/camera.h"
typedef void (*BgUpdate)(s32, s32);





typedef struct Camera {
                    CamCoord x;
                    CamCoord y;






               s32 unk8;
               s32 unkC;
               s32 unk10;
               s32 unk14;
               s32 shiftX;
               s32 shiftY;
               s32 unk20;
               s32 unk24;




               s32 minY;
               s32 maxY;
               s32 minX;
               s32 maxX;

               s32 dx;
               s32 dy;
               s16 unk40;
               s32 unk44;
               s32 unk48;
               s32 unk4C;



               u16 unk50;

               u16 unk52;
               u16 unk54;
               s16 unk56;
               BgUpdate fnBgUpdate;
               struct Task *movementTask;
               s16 shakeOffsetX;
               s16 shakeOffsetY;
               s16 unk64;
               u8 spectatorTarget;

} Camera;

extern struct Camera gCamera;
# 7 "include/game/sa1_sa2_shared/collision.h" 2
# 1 "include/game/sa1_sa2_shared/player.h" 1




# 1 "include/constants/move_states.h" 1
# 6 "include/game/sa1_sa2_shared/player.h" 2




typedef struct {
              SpriteTransform transform;
              Sprite s;
              Hitbox reserved;
} PlayerSpriteInfo;

extern PlayerSpriteInfo gPlayerLimbsPSI;
extern PlayerSpriteInfo gPlayerBodyPSI;



typedef struct {
               u8 flags;
               s8 unkAD;
               u16 unkAE;
               u16 unkB0;
} SonicFlags;

typedef struct {
               s16 flyingDuration;
               u16 unkAE;
               s8 unkB0;
} CreamFlags;

typedef struct {
               u8 flags;
               s8 shift;
               s8 unkAE;
               s8 unkAF;


               s32 flyingDuration;
} TailsFlags;

typedef struct {
               u8 flags;
               s8 shift;
               s8 unkAE;
} KnucklesFlags;

typedef struct {
               u8 unkAC;
} AmyFlags;
# 89 "include/game/sa1_sa2_shared/player.h"
struct Player_;
typedef void (*PlayerCallback)(struct Player_ *);

typedef struct Player_ {
               PlayerCallback callback;
               u16 unk4;

               s32 qWorldX;
               s32 qWorldY;

               s16 qSpeedAirX;
               s16 qSpeedAirY;
               s16 qSpeedGround;



               s8 spriteOffsetX;
               s8 spriteOffsetY;
               u8 filler18[8];


               u32 moveState;

               u8 rotation;
               u8 unk25;
               s16 spindashAccel;
               u8 unk28;
               u8 unk29;
               s16 unk2A;
               s16 timerInvulnerability;
               s16 timerInvincibility;
               u16 timerSpeedup;
               u16 confusionTimer;
               u16 itemEffect20Timer;
               s8 disableTrickTimer;
               u8 itemEffect;
               u8 layer;
               void *stoodObj;
               s32 maxSpeed;
               s32 topSpeed;
               s32 acceleration;
               s32 deceleration;
               u16 rollingDeceleration;
               u16 boostThreshold;
               u16 walkAnim;
               u16 unk56;
               s16 boostSpeed;
               bool8 isBoosting;
               u8 trickDir;
               u16 heldInput;
               u16 frameInput;
               s8 playerID;
               s8 unk61;
               u8 unk62;
               u8 unk63;
               s16 charState;
               s16 prevCharState;
               AnimId anim;
               u16 variant;
               bool8 unk6C;







               u8 transition;
               u8 unk6E;
               u8 prevTransition;
               bool8 unk70;
               u8 unk71;

               s16 unk72;
               s16 checkPointX;
               s16 checkPointY;
               u32 checkpointTime;
               u16 unk7C;
               u16 unk7E;
               s16 unk80;
               s16 unk82;



               s8 defeatScoreIndex;

               s8 character;
               s8 secondsUntilDrown;
               s8 framesUntilDrownCountDecrement;
               s8 framesUntilWaterSurfaceEffect;
               u8 filler88[3];
               struct Task *spriteTask;
               PlayerSpriteInfo *spriteInfoBody;
               PlayerSpriteInfo *spriteInfoLimbs;
# 192 "include/game/sa1_sa2_shared/player.h"
               s8 unk99[16];
               u8 unk98;




               u8 fillerA9[0x3];






    union {
        SonicFlags sf;
        CreamFlags cf;
        TailsFlags tf;
        KnucklesFlags kf;
        AmyFlags af;
    } w;
} Player;

extern Player gPlayer;
# 8 "include/game/sa1_sa2_shared/collision.h" 2
# 20 "include/game/sa1_sa2_shared/collision.h"
u32 Coll_Player_Entity_RectIntersection(Sprite *s, s32 sx, s32 sy, Player *p, Rect8 *rectPlayer);


u32 Coll_Player_ItemBox(Sprite *, s32, s32);

bool32 Coll_Player_Entity_HitboxN(Sprite *, s32, s32, s16, Player *, s16);
bool32 Coll_Player_Boss_Attack(Sprite *s, s32 sx, s32 sy, s16 hbIndex, Player *p);
bool32 Coll_Player_Enemy(Sprite *s, s32 sx, s32 sy, s16 hbIndex, Player *p);
bool32 Coll_Cheese_Enemy_Attack(Sprite *sprTarget, s32 sx, s32 sy, s16 hbIndex, Player *p);
u32 sub_800DA4C(Sprite *opponent, s16 oppX, s16 oppY, __attribute__((unused)) s32 param3, __attribute__((unused)) s32 param4, u8 layer);
u32 sub_800CDBC(Sprite *, s32, s32, Player *);
u32 Coll_Player_Entity_Intersection(Sprite *, s32, s32, Player *);
u32 Coll_Player_Interactable(Sprite *s, s32 sx, s32 sy, Player *p);

bool32 Coll_DamagePlayer(Player *);
void Coll_Player_Enemy_AdjustSpeed(Player *);

u32 Coll_Player_Platform(Sprite *, s32 x, s32 y, Player *);

u32 sub_800CE94(Sprite *s, s32 sx, s32 sy, Rect8 *param3, Player *p);
bool32 sub_800DD54(Player *p);
bool32 sub_800DE44(Player *p);
u32 sub_800D0A0(Sprite *s, s16 worldX, s16 worldY, s16 qSpeedX, s16 qSpeedY, u8 layer, u32 arg6);

bool32 Coll_Player_Enemy_Attack(Sprite *, s32, s32, u8);

u32 Coll_Player_Projectile(Sprite *, s32, s32);
# 10 "src/game/bosses/boss_1.c" 2

# 1 "include/game/player_callbacks.h" 1






struct Task *CreateSonicAmySkidAttackEffect(s32 x, s32 y, u16 p2);
void Player_SonicAmy_InitSkidAttack(Player *);
void Player_SonicAmy_InitStopNSlam(Player *);
void Player_Sonic_InitHomingAttack(Player *);
bool32 Player_Sonic_TryForwardThrust(Player *);
void Player_Cream_InitFlying(Player *);
void Player_Cream_InitChaoRollingAttack(Player *);
void Player_Cream_InitMidAirChaoAttack(Player *);
void Player_Cream_InitChaoAttack(Player *);
void Player_Cream_InitStepAttack(Player *);
void Player_Tails_InitFlying(Player *);
void Player_Tails_InitTailSwipe(Player *);
void Player_Knuckles_InitPunch(Player *);
void Player_Knuckles_InitSpiralAttack(Player *);
void Player_Knuckles_InitGlide(Player *);
void Player_Knuckles_InitDrillClaw(Player *);
void Player_Amy_InitHammerAttack(Player *);
void Player_InitHomingAttackRecoil(Player *p);
void Player_UpdateHomingPosition(s32 qX, s32 qY);
# 12 "src/game/bosses/boss_1.c" 2
# 1 "include/game/save.h" 1



# 1 "include/global.h" 1
# 5 "include/game/save.h" 2

# 1 "include/game/sa1_sa2_shared/globals.h" 1



# 1 "include/multi_sio.h" 1
# 83 "include/multi_sio.h"
struct MultiSioPacket {
    u8 frameCounter;
    u8 recvErrorFlags : 4;
    u8 loadRequest : 1;
    u8 downloadSuccessFlag : 1;
    u8 loadSuccessFlag : 1;
    u8 reserved_0 : 1;
    u16 checkSum;
    u16 data[20 / 2];
    u16 overrunCatch[2];
};


struct MultiSioArea {
    u8 type;
    u8 state;
    u8 connectedFlags;
    u8 recvSuccessFlags;

    u8 syncRecvFlag[4];

    u8 downloadSuccessFlags : 4;
    u8 loadEnable : 1;
    u8 loadRequest : 1;
    u8 loadSuccessFlag : 1;
    u8 startFlag : 1;

    u8 hardError;
    u8 recvFlagsAvailableCounter;


    u8 sendFrameCounter;
    u8 recvFrameCounter[4][2];

    s32 sendBufCounter;
    s32 recvBufCounter[4];

    u16 *nextSendBufp;
    u16 *currentSendBufp;
    u16 *currentRecvBufp[4];
    u16 *lastRecvBufp[4];
    u16 *recvCheckBufp[4];

    struct MultiSioPacket sendBuf[2];
    struct MultiSioPacket recvBuf[4][3];

};







extern struct MultiSioArea gMultiSioArea;





extern void MultiSioInit(u32 connectedFlags);
# 155 "include/multi_sio.h"
void MultiSioStart(void);
# 164 "include/multi_sio.h"
void MultiSioStop(void);







extern u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest);
# 224 "include/multi_sio.h"
struct MultiSioReturn {
    u32 recvSuccessFlags : 4;
    u32 loadEnable : 1;
    u32 loadRequest : 1;
    u32 loadSuccessFlag : 1;
    u32 type : 1;
    u32 connectedFlags : 4;
    u32 hardError : 1;
    u32 idOverError : 1;
    u32 reserved : 1;
    u32 recvFlagsAvailable : 1;
};





extern void MultiSioIntr(void);
# 257 "include/multi_sio.h"
extern void MultiSioSendDataSet(void *sendp, u32 loadReq);
# 272 "include/multi_sio.h"
extern u32 MultiSioRecvDataCheck(void *recvp);
# 5 "include/game/sa1_sa2_shared/globals.h" 2
# 75 "include/game/sa1_sa2_shared/globals.h"
typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
} MusicManagerState;

typedef struct {
    s32 squarePlayerDistance;
    u16 angle;
} HomingTarget;






typedef struct {
    u8 type;

    u8 opaque[7];
} RoomEvent;


typedef struct {
               s32 squarePlayerDistance;
               struct Task *task;
} CheeseTarget;


extern u8 gDemoPlayCounter;
extern u8 gGameMode;

extern s8 gCurrentLevel;
extern s8 gSelectedCharacter;





extern u8 gMultiplayerLanguage;



extern u16 gRingCount;

extern MusicManagerState gMusicManagerState;


extern u32 gCourseTime;


extern u8 gSpecialRingCount;


extern s32 gWorldSpeedY;
extern s32 gWorldSpeedX;

extern u16 gBossCameraClampYLower;
extern u16 gBossCameraClampYUpper;
extern u8 gRandomItemBox;
extern u8 gSpikesUnknownTimer;

extern s8 gUnknown_0300543C;
extern struct Task *gEntitiesManagerTask;

extern u8 gDestroySpotlights;

extern u8 gRoomEventQueueSendPos;



extern u16 gStageFlags;
extern u16 gPrevStageFlags;

extern u8 gDifficultyLevel;

extern s8 gTrappedAnimalVariant;

extern u8 gBossIndex;
extern u8 gNumSingleplayerCharacters;



extern u32 gStageTime;
extern u32 gMPStageStartFrameCount;

extern u32 gCheckpointTime;

extern u8 gRoomEventQueueWritePos;

extern u8 gBossRingsRespawnCount;
extern bool8 gBossRingsShallRespawn;
extern bool8 gBoostEffectTasksCreated;

extern struct Task *gMultiplayerPlayerTasks[4];
extern s8 gMultiplayerCharacters[4];
extern s8 gMultiplayerRanks[4];
extern u8 gOamMatrixIndex;

extern u8 gMultiplayerMissingHeartbeats[4];
extern u8 gActiveCollectRingEffectCount;

extern u8 gMultiplayerUnlockedCharacters;
extern u8 gMultiplayerUnlockedLevels;
extern u32 gMultiplayerIds[4];
extern u16 gMultiplayerNames[4][6];

extern u32 gMultiplayerPseudoRandom;

extern s32 gLevelScore;
extern u8 gNumLives;
extern bool8 gFinalBossActive;

extern HomingTarget gHomingTarget;

extern u8 gMultiplayerConnections;


extern s32 gStageGoalX;

extern u8 gMPRingCollectWins[4];
extern u8 gMultiplayerCharRings[4];

extern RoomEvent gRoomEventQueue[16];

extern CheeseTarget gCheeseTarget;

extern u8 gFrameInputsBuf[4];






struct InputCounters {
    u8 unk0, unk1, unk2, unk3;
};

extern u8 gNewInputCountersIndex;
extern struct InputCounters gNewInputCounters[32];


extern u8 gFrameInputsBufIndex;
# 7 "include/game/save.h" 2

# 1 "include/game/stage/player_controls.h" 1





struct ButtonConfig {
    u16 jump;
    u16 attack;
    u16 trick;
};

extern struct ButtonConfig gPlayerControls;

void SetPlayerControls(u16 jump, u16 attack, u16 trick);
# 9 "include/game/save.h" 2
# 1 "include/constants/zones.h" 1
# 10 "include/game/save.h" 2
# 1 "include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 11 "include/game/save.h" 2
# 23 "include/game/save.h"
typedef u16 PlayerNameChar;
typedef u16 TimeRecord;
# 67 "include/game/save.h"
struct TimeRecords {
    TimeRecord table[NUM_CHARACTERS][7][3][3];
};



struct MultiplayerScore {
    u32 playerId;
    PlayerNameChar playerName[6];

    bool8 slotFilled;

    u8 wins;
    u8 losses;
    u8 draws;
};

typedef struct SaveGame {
                u32 id;

                u8 difficultyLevel;
                bool8 timeLimitDisabled;
                u8 language;

                u8 unlockedLevels[NUM_CHARACTERS];
                u8 chaosEmeralds[NUM_CHARACTERS];

                bool8 soundTestUnlocked;
                bool8 bossTimeAttackUnlocked;

                u8 unlockedCharacters;
                bool8 chaoGardenUnlocked;

                bool8 completedCharacters[NUM_CHARACTERS];

                u8 extraZoneStatus;
                bool8 extraEndingCreditsPlayed;

                u8 multiplayerWins;
                u8 multiplayerLoses;
                u8 multiplayerDraws;

                u16 playerName[6];

                struct ButtonConfig buttonConfig;
                struct TimeRecords timeRecords;
                struct MultiplayerScore multiplayerScores[10];
                u32 score;
} SaveGame;

extern struct SaveGame *gLoadedSaveGame;
# 130 "include/game/save.h"
void InsertMultiplayerProfile(u32 playerId, u16 *name);
void RecordOwnMultiplayerResult(s16 result);
void RecordMultiplayerResult(u32 id, u16 *name, s16 result);

void SaveInit(void);
bool16 SaveGameExists(void);
s16 NewSaveGame(void);
s16 LoadSaveGame(void);
void LoadCompletedSaveGame(void);
bool32 WriteSaveGame(void);
# 13 "src/game/bosses/boss_1.c" 2
# 1 "include/game/cheese.h" 1






# 1 "include/game/multiplayer/mp_player.h" 1






typedef struct {


    Sprite s;
    Hitbox reserved;

    SpriteTransform transform;
    s32 unk44;
    s32 unk48;
    u32 unk4C;
    Vec2_16 pos;
    u16 unk54;
    u8 unk56;
    u8 unk57;
    u8 unk58[4];
    u32 unk5C;
    u8 unk60;
    u8 unk61;
    u16 unk62;
    u8 unk64;
    s16 unk66;
    s16 unk68;
    u16 unk6A;
} MultiplayerPlayer;

void CreateMultiplayerPlayer(u8);

void sub_8018818(void);

extern bool8 gShouldSpawnMPAttack2Effect;
# 8 "include/game/cheese.h" 2
# 1 "include/game/stage/player.h" 1
# 9 "include/game/stage/player.h"
# 1 "include/game/parameters/characters.h" 1
# 10 "include/game/stage/player.h" 2






typedef s32 type8029A28;

void Player_SetMovestate_IsInScriptedSequence(void);
void Player_ClearMovestate_IsInScriptedSequence(void);

void InitializePlayer(Player *p);
void DestroyPlayerTasks(Player *player);
void Player_TransitionCancelFlyingAndBoost(Player *p);
void Player_HandleSpriteYOffsetChange(Player *, s32);
void sub_8023260(Player *);
void sub_80232D0(Player *);
void Player_AirInputControls(Player *);
void Player_TouchGround(Player *p);
void Player_Uncurl(Player *p);
void Player_HandlePhysicsWithAirInput(Player *p);
void sub_8028204(Player *p);
void sub_80282EC(Player *p);
void sub_80283C4(Player *p);
void sub_8029C84(Player *p);
void sub_8029FA4(Player *p);

void Player_DisableInputAndBossTimer(void);
void Player_DisableInputAndBossTimer_FinalBoss(void);


void SetStageSpawnPos(u32 character, u32 level, u32 p2, Player *player);
void CallSetStageSpawnPos(u32 character, u32 level, u32 p2, Player *p);

s32 sub_8029B88(Player *player, u8 *p1, s32 *out);
s32 sub_8029AC0(Player *player, u8 *p1, s32 *out);
s32 sub_8029B0C(Player *player, u8 *p1, s32 *out);

type8029A28 sub_8029A28(Player *player, u8 *p1, type8029A28 *out);
type8029A28 sub_8029A74(Player *player, u8 *p1, type8029A28 *out);

bool32 Player_TryJump(Player *);
bool32 Player_TryAttack(Player *);
# 81 "include/game/stage/player.h"
extern const u16 sCharStateAnimInfo[][2];
extern const AnimId gPlayerCharacterIdleAnims[];
# 9 "include/game/cheese.h" 2

typedef struct {
               s32 unk54;
               s32 unk58;
               s16 unk5C;
               s16 unk5E;
               s32 unk60;
               u8 unk64;
               Sprite *unk68;
} Cheese_UNK54;

typedef struct {
               s32 posX;
               s32 posY;

               u8 unk8;
               u8 unk9;
               u8 unkA;
               u16 unkC;
               s16 unkE;
               u16 unk10;
               s16 unk12;
               u32 unk14;
               struct Task *unk18;


               Sprite s;
               Hitbox reserved;
               Cheese_UNK54 unk54;
               MultiplayerPlayer *mpp;
} Cheese;

extern Cheese *gCheese;

void CreateCheese(Player *);
# 14 "src/game/bosses/boss_1.c" 2
# 1 "include/game/bosses/boss_1.h" 1



extern void CreateEggHammerTankII(void);
extern void EggHammerTankIIMove(s32, s32);
# 15 "src/game/bosses/boss_1.c" 2
# 1 "include/game/bosses/common.h" 1






extern struct Task *gActiveBossTask;
typedef void (*TranslateBossFunction)(s32, s32);

typedef enum {
    BOSS_EGG_HAMMER_TANK_II = 0,
    BOSS_EGG_BOMBER_TANK = 1,
    BOSS_EGG_TOTEM = 2,
    BOSS_AERO_EGG = 3,
    BOSS_EGG_SAUCER = 4,
    BOSS_EGG_GO_ROUND = 5,
    BOSS_EGG_FROG = 6,
    BOSS_SUPER_EGG_ROBO_Z = 7,
    BOSS_TRUE_AREA_53_BOSS = 8
} EBoss;

typedef struct {
               Sprite s;
               s32 posX;
               s32 posY;
               s16 accelX;
               s16 accelY;
               u16 velocityY;
               u8 *numCreatedParts;
} Sprite_ExplosionParts;

typedef struct {
               void *vram;
               u32 unk4;
               AnimId anim;
               u16 variant;
               u16 rotation;
               u16 speed;
               u8 filler10[0x4];
               s32 spawnX;
               s32 spawnY;
               s16 velocity;
} ExplosionPartsInfo;


void CreateZoneBoss(u8 boss);
void CreateBossParticleWithExplosionUpdate(ExplosionPartsInfo *p0, u8 *numCreatedParts);
void CreateBossParticleStatic(ExplosionPartsInfo *info, u8 *numCreatedParts);
void Task_DestroyBossParts(void);
void sub_8039ED4(void);
void sub_8039F14(s32 p0, s32 p1);
void sub_8039F50(s32 p0, u8 p1);

extern const u32 gTileInfoBossScrews[][3];
# 16 "src/game/bosses/boss_1.c" 2
# 1 "include/game/bosses/eggmobile_escape_sequence.h" 1





void CreateEggmobileEscapeSequence(s16 x, s16 y, u32 spriteFlags);
# 17 "src/game/bosses/boss_1.c" 2
# 1 "include/game/cutscenes/level_endings.h" 1





void CreateStageResultsCutscene(u8 unlockedCharacter);

void CreateCharacterUnlockCutScene(u8 zone);
void CreateCreamUnlockCutScene(void);
void CreateTailsUnlockCutScene(void);
void CreateKnucklesUnlockCutScene(void);
# 18 "src/game/bosses/boss_1.c" 2
# 1 "include/game/parameters/bosses.h" 1
# 19 "src/game/bosses/boss_1.c" 2
# 1 "include/game/stage/boss_results_transition.h" 1





extern void InitHBlankBgOffsets(u16);
extern void sub_802EF68(s16 p0, s16 p1, u8 p2);

extern const u16 gUnknown_080D6DE4[][2];
# 20 "src/game/bosses/boss_1.c" 2
# 1 "include/game/stage/terrain_collision.h" 1






typedef s32 (*Func801F100)(s32, s32, s32);
s32 sub_801EB44(s32, s32, s32);
s32 sub_801EC3C(s32, s32, s32);

typedef s32 (*Func801F07C)(s32, s32, s32, u8 *);
s32 sub_801ED24(s32, s32, s32, u8 *);
s32 sub_801EE64(s32, s32, s32, u8 *);
s32 sub_801F07C(s32, s32, s32, s32, u8 *, Func801F07C);


s32 sub_801E4E4(s32, s32, s32, s32, u8 *, Func801F07C);
s32 sub_801E6D4(s32, s32, s32, s32, u8 *, Func801F07C);

void sub_801F044(void);
s32 sub_801F100(s32, s32, s32, s32, Func801F100);

extern const Collision *gRefCollision;
extern const Collision *const gCollisionTable[];
# 21 "src/game/bosses/boss_1.c" 2

# 1 "include/game/stage/camera.h" 1
# 9 "include/game/stage/camera.h"
void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 23 "src/game/bosses/boss_1.c" 2
# 1 "include/game/stage/results.h" 1





# 1 "include/game/stage/screen_fade.h" 1
# 23 "include/game/stage/screen_fade.h"
typedef struct {

               s16 window;
               s16 flags;
# 35 "include/game/stage/screen_fade.h"
               s16 brightness;
               s16 speed;
               s16 bldCnt;
               s16 bldAlpha;
} ScreenFade;


extern u8 UpdateScreenFade(ScreenFade *);
void sub_802D5A0(ScreenFade *fade);
# 7 "include/game/stage/results.h" 2

typedef struct {
                ScreenFade fade;
                Sprite title[3];
                Sprite sprScores[3];
                Sprite separator;
                u32 timeBonusScore;
                u32 ringBonusScore;
                u32 spRingBonusScore;
                s32 counter;
                s32 unk16C;
} StageResultsBase;

u16 CreateStageResults(u32, u16, u8);
void StageResults_AnimateSeparator(void);
void StageResults_AnimateTitle(void);

extern const u16 gAnimsGotThroughZoneAndActNames[][3];
extern const u16 gStageResultsHeadlineTexts[][3];
extern const u16 gAnimsGotThroughCharacterNames[][3];
# 24 "src/game/bosses/boss_1.c" 2
# 1 "include/game/stage/screen_fade.h" 1
# 25 "src/game/bosses/boss_1.c" 2
# 1 "include/game/stage/screen_shake.h" 1






struct Task *CreateScreenShake(u32 p0, u32 p1, u32 p2, u32 p3, u32 flags);
# 26 "src/game/bosses/boss_1.c" 2
# 1 "include/game/time_attack/results.h" 1





u32 CreateTimeAttackResults(u32 finishTime);
# 27 "src/game/bosses/boss_1.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 29 "src/game/bosses/boss_1.c" 2
# 1 "include/constants/char_states.h" 1
# 30 "src/game/bosses/boss_1.c" 2
# 1 "include/constants/songs.h" 1
# 31 "src/game/bosses/boss_1.c" 2
# 42 "src/game/bosses/boss_1.c"
typedef struct {
    s32 x;
    s32 y;
    s32 speedX;
    s32 speedY;
    s32 remainingBounces;
    s32 despawnTimeout;
} DestructionComponent;

typedef struct {
    ScreenFade fade;

    s32 bodyX;
    s32 bodyY;
    s32 bodySpeedX;
    s32 bodySpeedY;

    s32 hammerX;
    s32 hammerY;
    s32 hammerSpeedX;
    s32 hammerSpeedY;
    s32 hammerBounceSide;
    s32 hammerState;


    u8 fillerE8[16];

    DestructionComponent armSegments[8];
    DestructionComponent hammerArmSegments[8];
    DestructionComponent wheels[4];
    u16 hammerAngle;


    u8 filler2DA[2];

    u8 axelsJoinedRemainingBounces;
    u8 numPartsCreated;
} DestructionScene;

typedef struct {
    s32 x;
    s32 y;
    s16 speedX;
    s16 speedY;


    s32 armSegmentPositions[8];

    s32 armSegmentAngles[8];
    u32 armBaseSin;
    u32 armBaseAngle;
    s32 hammerArmSegmentPositions[8];
    s32 hammerArmSegmentAngles[8];

    s32 hammerAngle;
    s32 frontAxelY;
    s32 rearAxelY;
    u32 hammerState;
    u32 hammerExtension;
    u32 sceneTimer;

    u32 timer;

    u8 health;
    u8 timerInvulnerability;
    u8 timerPilotLaugh;
    bool8 pilotEscaped;

    DestructionScene destructionScene;

    Sprite body;
    Hitbox reserved0;
    Sprite armSegment;
    Sprite hand;
    Sprite pilot;
    Sprite wheel;
    Sprite brokenWheel;
    Sprite hammer;
    SpriteTransform transform;

    Sprite cream;
    Sprite cheese;
} EggHammerTankII;

typedef void (*HammertankFunc)(EggHammerTankII *);

static void Task_EggHammerTankII_RollIn(void);
static void TaskDestructor_EggHammerTankII(struct Task *);
static void Task_EggHammerTankII_Main(void);
static void Task_DestructionScene_Main(void);

static void UpdateArmSegments(EggHammerTankII *);
static void Render(EggHammerTankII *);
static void PilotLaugh(EggHammerTankII *boss);
static void HandleBossHit(EggHammerTankII *boss);
static void HandleBossHitPalette(EggHammerTankII *boss);
static void StateHandler_HammerReset(EggHammerTankII *boss);
static void StateHandler_HammerExtend(EggHammerTankII *boss);
static void StateHandler_HammerAim(EggHammerTankII *boss);
static void StateHandler_HammerPlunge(EggHammerTankII *boss);
static void StateHandler_HammerSlam(EggHammerTankII *boss);
static void StateHandler_HammerHold(EggHammerTankII *boss);
static void StateHandler_HammerDrag(EggHammerTankII *boss);
static void StateHandler_HammerRetract(EggHammerTankII *boss);

static void PhysicsHandler_Falling(void);
static void PhysicsHandler_OnTerrain(void);
static bool8 IsBossTouchingTerrain(void);

static const s16 gUnknown_080D7A18[] = {
    96, 104, 112, 120, 128, 136, 144, 152,
};
static const s16 sQArmSegmentAngleOffsets[] = {
    ((s32)((0.625)*256)), ((s32)((0.609375)*256)), ((s32)((0.59375)*256)), ((s32)((0.578125)*256)), ((s32)((0.5625)*256)), ((s32)((0.546875)*256)), ((s32)((0.53125)*256)), ((s32)((0.515625)*256)),
};

static const s32 gUnknown_080D7A38[8] = {
    ((s32)((0.0)*256)), ((s32)((12.0)*256)), ((s32)((24.0)*256)), ((s32)((34.0)*256)), ((s32)((44.0)*256)), ((s32)((50.0)*256)), ((s32)((54.0)*256)), ((s32)((56.0)*256)),
};

static const s32 gUnknown_080D7A58[8] = {
    ((s32)((0.0)*256)), ((s32)((12.0)*256)), ((s32)((24.0)*256)), ((s32)((36.0)*256)), ((s32)((48.0)*256)), ((s32)((60.0)*256)), ((s32)((72.0)*256)), ((s32)((84.0)*256)),
};

static const s16 gUnknown_080D7A78[] = {
    256, 256, 256, 256, 256, 256, 256, 256, 144, 128, 112, 96, 80, 64, 48, 48,
};

static const s16 gUnknown_080D7A98[] = {
    576, 320, 576, 320, 320,
};

static const u8 gUnknown_080D7AA2[] = {
    8, 13, 8, 13, 13,
};

static const TaskMain sGroundPhysicsHandlers[] = { PhysicsHandler_Falling, PhysicsHandler_OnTerrain };

static const HammertankFunc sBossStateHandlers[] = {
    [0] = StateHandler_HammerReset, [1] = StateHandler_HammerExtend,
    [2] = StateHandler_HammerAim, [3] = StateHandler_HammerPlunge,
    [4] = StateHandler_HammerSlam, [5] = StateHandler_HammerHold,
    [6] = StateHandler_HammerDrag, [7] = StateHandler_HammerRetract,
};

static const u16 gUnknown_080D7AD0[][16u] = {
    INCBIN_U16("graphics/80D7AD0.gbapal"),
    INCBIN_U16("graphics/80D7AF0.gbapal"),
};

void CreateEggHammerTankII(void)
{
    struct Task *t;
    EggHammerTankII *boss;
    Sprite *s;
    u32 i;

    gPlayer.moveState |= 0x00200000;
    gPseudoRandom = gStageTime;
    t = TaskCreate(Task_EggHammerTankII_RollIn, sizeof(EggHammerTankII), 0x4000, 0, TaskDestructor_EggHammerTankII);

    boss = (void *)((t)->data);
    if (((gCurrentLevel) == ((7)*(3 + 1)) + (0))) {
        u8 difficulty = gDifficultyLevel;
        if (difficulty != 0) {
            boss->health = 3;
        } else {
            boss->health = 4;
        }
    } else if (gDifficultyLevel != 0 && gGameMode != 2) {
        boss->health = 6;
    } else {
        boss->health = 8;
    }

    boss->sceneTimer = 0;
    boss->hammerExtension = 2;
    boss->hammerState = 0;
    boss->timer = 120;

    boss->timerInvulnerability = 0;
    boss->timerPilotLaugh = 0;
    boss->pilotEscaped = 0;

    i = ((s32)((980)*256));
    boss->x = i;
    boss->y = ((s32)((155)*256));

    if (((gCurrentLevel) == ((7)*(3 + 1)) + (0))) {
        boss->speedX = ((s32)((5.00)*256));
        boss->speedY = ((s32)((0.00)*256));
    } else {
        boss->speedX = ((s32)((5.00)*256));
        boss->speedY = ((s32)((0.00)*256));
    }

    for (i = 0; i < 8; i++) {
        boss->armSegmentAngles[i] = 0;
        boss->armSegmentPositions[i] = gUnknown_080D7A38[i];
    }

    boss->armBaseSin = 0;
    boss->armBaseAngle = 0;

    for (i = 0; i < 8; i++) {
        boss->hammerArmSegmentAngles[i] = ((int)((((double)(270)) / 360.0) * 1024));
        boss->hammerArmSegmentPositions[i] = gUnknown_080D7A58[i];
    }

    boss->hammerAngle = ((int)((((double)(270)) / 360.0) * 1024));
    boss->frontAxelY = ((s32)((18.5)*256));
    boss->rearAxelY = ((s32)((18.5)*256));

    s = &boss->body;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(0x48); s->graphics.anim = 632; s->variant = 0; s->oamFlags = ((20) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;
    UpdateSpriteAnimation(s);

    s = &boss->armSegment;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(4); s->graphics.anim = 633; s->variant = 0; s->oamFlags = ((18) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;
    UpdateSpriteAnimation(s);

    s = &boss->wheel;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(9); s->graphics.anim = 635; s->variant = 0; s->oamFlags = ((19) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;

    s = &boss->brokenWheel;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(9); s->graphics.anim = 634; s->variant = 0; s->oamFlags = ((21) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;

    s = &boss->hand;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(0x40); s->graphics.anim = 631; s->variant = 0; s->oamFlags = ((17) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;
    UpdateSpriteAnimation(s);

    s = &boss->pilot;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(0xC); s->graphics.anim = 629; s->variant = 0; s->oamFlags = ((21) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;

    s = &boss->hammer;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(0x40);
    s->graphics.anim = 630; s->variant = 0; s->oamFlags = ((24) << 6); s->graphics.size = 0;;
    s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;

    s->frameFlags
        = (gOamMatrixIndex++) | ((2) << (12)) | ((1) << (5)) | ((1) << (6));

    if (!((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && gSelectedCharacter == CHARACTER_SONIC && gLoadedSaveGame->unlockedLevels[0] <= gCurrentLevel) {

        s = &boss->cream;
        s->x = 0;
        s->y = 0;
        s->graphics.dest = VramMalloc(0xC); s->graphics.anim = 129; s->variant = 0; s->oamFlags = ((2) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;

        s = &boss->cheese;
        s->x = 0;
        s->y = 0;
        s->graphics.dest = VramMalloc(9); s->graphics.anim = 466; s->variant = 0; s->oamFlags = ((2) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;
    } else {
        boss->cream.graphics.dest = 
# 310 "src/game/bosses/boss_1.c" 3 4
                                   ((void *)0)
# 310 "src/game/bosses/boss_1.c"
                                       ;
        boss->cheese.graphics.dest = 
# 311 "src/game/bosses/boss_1.c" 3 4
                                    ((void *)0)
# 311 "src/game/bosses/boss_1.c"
                                        ;
    }

    gActiveBossTask = t;
}

static void Task_EggHammerTankII_RollIn(void)
{
    EggHammerTankII *boss = (void *)((gCurTask)->data);
    u32 sceneTimer = ++boss->sceneTimer;

    if (sceneTimer < 21) {
        boss->speedX = 0;
        return;
    }

    if (sceneTimer < 127) {
        u32 r0, r2;




        if (((gCurrentLevel) == ((7)*(3 + 1)) + (0))) {
            r0 = sceneTimer * ((s32)((5)*256));
            r2 = r0 + ((s32)((1210)*256));
            r2 += ((sceneTimer - 61) * (sceneTimer - 61) * (sceneTimer - 61)) >> 1;
            r2 -= ((sceneTimer - 61) * 48 * (sceneTimer - 61)) >> 1;
            r0 = (sceneTimer - 61) >> 1;
            r2 += r0;
            boss->x = r2;
        } else {
            r0 = sceneTimer * ((s32)((5)*256));
            r2 = r0 + ((s32)((1210)*256));
            r2 += ((sceneTimer - 61) * (sceneTimer - 61) * (sceneTimer - 61)) >> 1;
            r2 -= ((sceneTimer - 61) * 48 * (sceneTimer - 61)) >> 1;
            r0 = (sceneTimer - 61) >> 1;
            r2 += r0;
            boss->x = r2;
        }
    }
    boss->x += boss->speedX;
    boss->y += boss->speedY;

    if (sceneTimer > 126) {
        gPlayer.moveState &= ~0x00200000;
        boss->speedX = ((s32)((5.00)*256));
        gCurTask->main = Task_EggHammerTankII_Main;
    }

    sGroundPhysicsHandlers[IsBossTouchingTerrain()]();
    UpdateArmSegments(boss);
    Render(boss);
}

static void HandleCollision(EggHammerTankII *boss)
{
    Vec2_32 pos;
    Sprite *s;

    if (boss->timerInvulnerability == 0) {

        if (boss->hammerState == 0 || boss->hammerState == 1
            || boss->hammerState == 2 || boss->hammerState == 3
            || boss->hammerState == 4 || boss->hammerState == 6) {
            s32 r0;




            s32 r2;


            r2 = ((int)((boss->x) >> 8));
            r0 = (((boss->hammerArmSegmentPositions[5] * (gSineTable[(boss->hammerArmSegmentAngles[5] & (1024 - 1)) + 256])) >> 23) - 8);
            pos.x = r2 + r0;

            r2 = ((int)((boss->y) >> 8));
            r0 = ((boss->hammerArmSegmentPositions[5] * (gSineTable[(boss->hammerArmSegmentAngles[5] & (1024 - 1))]) >> 23));
            pos.y = r2 + r0;

            pos.x -= ((int)((gPlayer.qWorldX) >> 8));
            pos.y -= ((int)((gPlayer.qWorldY) >> 8));
            if ((((pos.x) * (pos.x)) + ((pos.y) * (pos.y))) < 420) {
                PilotLaugh(boss);
                Coll_DamagePlayer(&gPlayer);
            }
        }


        s = &boss->body;
        pos.x = ((int)((boss->x) >> 8));
        pos.y = ((int)((boss->y) >> 8));

        s->x = pos.x - gCamera.x;
        s->y = pos.y - gCamera.y;

        Coll_Player_Enemy(s, pos.x, pos.y, 1, &gPlayer);
        Player_UpdateHomingPosition(((s32)((pos.x) << 8)), ((s32)((pos.y) << 8)));

        if (boss->timerInvulnerability == 0 || ((gPlayer.qSpeedAirY > 0 || !(gPlayer.moveState & 2)) && (gPlayer.moveState & 2))) {
            if (Coll_Player_Boss_Attack(s, pos.x, pos.y, 0, &gPlayer) == 1) {
                HandleBossHit(boss);
            } else {
                Coll_Player_Enemy(s, pos.x, pos.y, 0, &gPlayer);
            }

            if (boss->timerInvulnerability == 0 && Coll_Cheese_Enemy_Attack(s, pos.x, pos.y, 0, &gPlayer) == 1) {
                HandleBossHit(boss);
            }
        }
    }
}

static void Task_DestructionSceneOutro(void)
{
    EggHammerTankII *boss = (void *)((gCurTask)->data);
    ScreenFade *fade = &boss->destructionScene.fade;
    boss->sceneTimer++;

    if (boss->sceneTimer > 8) {
        switch (boss->sceneTimer) {
            case 9:
                gFlags &= ~0x4;
                m4aSongNumStart(333);
                break;
        }
    }

    if (boss->sceneTimer < 33) {
        if (boss->sceneTimer == 1) {
            fade->flags = (1 << 0);
            fade->brightness = ((s32)((8)*256));
            fade->speed = ((s32)((0.75)*256));
        }
        UpdateScreenFade(fade);
    } else if (boss->sceneTimer < 121) {
        Cheese *cheese;
        fade->flags = (1 << 1);
        fade->brightness = ((s32)((0)*256));
        fade->speed = ((s32)((0)*256));
        UpdateScreenFade(fade);

        if (!((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && gSelectedCharacter == CHARACTER_SONIC
            && gLoadedSaveGame->unlockedLevels[CHARACTER_SONIC] <= gCurrentLevel) {
            gPlayer.charState = 81;
        }

        if (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && (boss->sceneTimer == 34)) {
            s32 x, y;

            x = gUnknown_080D6DE4[0][0] - ((int)((gPlayer.qWorldX) >> 8));
            y = gUnknown_080D6DE4[0][1] - ((int)((gPlayer.qWorldY) >> 8));

            gPlayer.qWorldX += ((s32)((x)*256));
            gPlayer.qWorldY += ((s32)((y)*256));

            gCamera.x += x;
            gCamera.y += y;

            gCamera.unk20 += x;
            gCamera.unk24 += y;

            gCamera.unk10 += x;
            gCamera.unk14 += y;

            cheese = gCheese;
            if (cheese != 
# 477 "src/game/bosses/boss_1.c" 3 4
                         ((void *)0)
# 477 "src/game/bosses/boss_1.c"
                             ) {
                cheese->posX += ((s32)((x)*256));
                cheese->posY += ((s32)((y)*256));
            }

            gBossIndex++;
        }
    } else {
        fade->speed = ((s32)((40. / 256.)*256));

        if (UpdateScreenFade(fade) == 1) {
            if (!((gCurrentLevel) == ((7)*(3 + 1)) + (0))) {
                if (gGameMode == 2) {
                    CreateTimeAttackResults(gCourseTime);
                } else if (gSelectedCharacter == CHARACTER_SONIC && gLoadedSaveGame->unlockedLevels[CHARACTER_SONIC] <= gCurrentLevel) {
                    CreateStageResultsCutscene(0);
                } else {
                    CreateStageResults(gCourseTime, gRingCount, gSpecialRingCount);
                }
            }

            TaskDestroy(gCurTask);
            return;
        }
    }

    gWinRegs[4] = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    gWinRegs[5] = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4));
}

static void Render(EggHammerTankII *boss)
{
    s8 i;
    s16 x, y;
    s16 x3, y3;
    SpriteTransform *transform;
    DestructionScene *ds = &boss->destructionScene;
    Sprite *s = &boss->body;
    s->x = ((int)((boss->x) >> 8)) - gCamera.x;
    s->y = ((int)((boss->y) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &boss->pilot;
    s->x = ((int)((boss->x) >> 8)) - gCamera.x + 4;
    s->y = ((int)((boss->y) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &boss->wheel;
    s->x = ((int)((boss->x - ((s32)((22)*256))) >> 8)) - gCamera.x;
    s->y = ((int)((boss->y + boss->frontAxelY + ((s32)((14.5)*256))) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &boss->wheel;
    s->x = ((int)((boss->x + ((s32)((24)*256))) >> 8)) - gCamera.x;
    s->y = ((int)((boss->y + boss->rearAxelY + ((s32)((14.5)*256))) >> 8)) - gCamera.y;
    DisplaySprite(s);

    s = &boss->brokenWheel;
    s->x = ((int)((boss->x - ((s32)((22)*256))) >> 8)) - gCamera.x;
    s->y = ((int)((boss->y + boss->frontAxelY + ((s32)((14.5)*256))) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &boss->brokenWheel;
    s->x = ((int)((boss->x + ((s32)((24)*256))) >> 8)) - gCamera.x;
    s->y = ((int)((boss->y + boss->rearAxelY + ((s32)((14.5)*256))) >> 8)) - gCamera.y;
    DisplaySprite(s);

    s = &boss->armSegment;
    s->oamFlags = ((18) << 6);
    x = ((int)((boss->x) >> 8)) - gCamera.x;
    y = ((int)((boss->y) >> 8)) - gCamera.y;

    for (i = 6; i >= 0; i--) {
        s->x = x + (((gSineTable[((boss->armSegmentAngles[i] + ((int)((((double)(28.125)) / 360.0) * 1024))) & (1024 - 1)) + 256]) * boss->armSegmentPositions[i]) >> 23);
        s->y = y + (((gSineTable[((boss->armSegmentAngles[i] + ((int)((((double)(28.125)) / 360.0) * 1024))) & (1024 - 1))]) * boss->armSegmentPositions[i]) >> 23);
        DisplaySprite(s);

        if (boss->health != 0) {
            ds->armSegments[i].x = s->x;
            ds->armSegments[i].y = s->y;
        }
    }

    s = &boss->hand;
    s->x = x + (((gSineTable[((boss->armSegmentAngles[7] + ((int)((((double)(28.125)) / 360.0) * 1024))) & (1024 - 1)) + 256]) * boss->armSegmentPositions[7]) >> 23);
    s->y = y + (((gSineTable[((boss->armSegmentAngles[7] + ((int)((((double)(28.125)) / 360.0) * 1024))) & (1024 - 1))]) * boss->armSegmentPositions[7]) >> 23);

    x3 = s->x;
    y3 = s->y;
    DisplaySprite(s);

    if (boss->cream.graphics.dest != 
# 572 "src/game/bosses/boss_1.c" 3 4
                                    ((void *)0)
# 572 "src/game/bosses/boss_1.c"
                                        ) {
        s = &boss->cream;
        s->x = x3 + 5;
        s->y = y3 - 20;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        s = &boss->cheese;
        s->x = x3 + 5;
        s->y = y3 - 20;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    s = &boss->armSegment;
    s->oamFlags = ((25) << 6);

    for (i = 0; i < 6; i++) {
        s->x = x - 8 + (((gSineTable[((boss->hammerArmSegmentAngles[i]) & (1024 - 1)) + 256]) * boss->hammerArmSegmentPositions[i]) >> 23);
        s->y = y + (((gSineTable[((boss->hammerArmSegmentAngles[i]) & (1024 - 1))]) * boss->hammerArmSegmentPositions[i]) >> 23);
        DisplaySprite(s);
    }

    s = &boss->hammer;
    transform = &boss->transform;

    s->x = x - 8 + (((gSineTable[((boss->hammerArmSegmentAngles[5]) & (1024 - 1)) + 256]) * boss->hammerArmSegmentPositions[5]) >> 23);
    s->y = y + (((gSineTable[((boss->hammerArmSegmentAngles[5]) & (1024 - 1))]) * boss->hammerArmSegmentPositions[5]) >> 23);
    s->frameFlags = gOamMatrixIndex++ | 0x2060;

    transform->rotation = (boss->hammerArmSegmentAngles[5] - (boss->hammerAngle) + boss->hammerArmSegmentAngles[5]) & (1024 - 1);
    if (transform->rotation != ((int)((((double)(270)) / 360.0) * 1024))) {
        transform->rotation += 10;
    }

    transform->qScaleX = 256;
    transform->qScaleY = 256;
    transform->x = s->x;
    transform->y = s->y;
    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
    DisplaySprite(s);
}

static void PhysicsHandler_OnTerrain(void)
{
    s32 result;
    s32 x, y;
    EggHammerTankII *boss = (void *)((gCurTask)->data);
    s32 origY;
    s32 idx;
    boss->speedY = 0;
    origY = boss->y;
    x = (boss->x + ((s32)((24)*256)));
    y = (origY + boss->rearAxelY + ((s32)((14.5)*256)));

    result = sub_801F100(((int)((y) >> 8)), ((int)((x) >> 8)), 1, 8, sub_801EC3C);
    if (result < 1) {
        boss->y += result * 64;
        idx = -result;
        if (idx > 7) {
            idx = 7;
        }
        boss->rearAxelY -= (idx * gUnknown_080D7A18[idx] - idx * 64);
    } else {
        boss->rearAxelY += ((s32)((1.125)*256));
    }

    boss->y -= ((int)(((((s32)((18.5)*256)) - boss->rearAxelY) * ((s32)((0.375)*256))) >> 8));

    if (boss->rearAxelY < ((s32)((14.5)*256))) {
        boss->rearAxelY = ((s32)((14.5)*256));
    }
    if (boss->rearAxelY > ((s32)((23.5)*256))) {
        boss->rearAxelY = ((s32)((23.5)*256));
    }

    x = (boss->x - ((s32)((22)*256)));
    y = (origY + boss->frontAxelY + ((s32)((14.5)*256)));

    result = sub_801F100(((int)((y) >> 8)), ((int)((x) >> 8)), 1, 8, sub_801EC3C);
    if (result < 1) {
        boss->y += (result * ((s32)((0.25)*256)));

        idx = -result;
        if (idx > 7) {
            idx = 7;
        }
        boss->frontAxelY -= (idx * gUnknown_080D7A18[idx] - idx * ((s32)((0.25)*256)));
    } else {
        boss->frontAxelY += ((s32)((1.125)*256));
    }

    boss->y -= ((int)(((((s32)((18.5)*256)) - boss->frontAxelY) * ((s32)((0.375)*256))) >> 8));

    if (boss->frontAxelY < ((s32)((14.5)*256))) {
        boss->frontAxelY = ((s32)((14.5)*256));
    }
    if (boss->frontAxelY > ((s32)((23.5)*256))) {
        boss->frontAxelY = ((s32)((23.5)*256));
    }
}

static void StateHandler_HammerReset(EggHammerTankII *boss)
{
    u8 i;

    boss->hammerAngle -= ((int)((((double)(2.8125)) / 360.0) * 1024));

    if (boss->hammerAngle < ((int)((((double)(270)) / 360.0) * 1024))) {
        boss->hammerAngle = ((int)((((double)(270)) / 360.0) * 1024));
    }
    boss->hammerArmSegmentAngles[0] = boss->hammerAngle;

    for (i = 1; i < (sizeof(boss->hammerArmSegmentPositions) / sizeof((boss->hammerArmSegmentPositions)[0])); i++) {
        boss->hammerArmSegmentAngles[i]
            += ((int)(((boss->hammerArmSegmentAngles[i - 1] - boss->hammerArmSegmentAngles[i]) * gUnknown_080D7A78[i + 8]) >> 8));
    }

    boss->timer--;

    if (boss->timer == 0) {
        boss->timer = 10;
        boss->hammerState = 1;

        for (i = 0; i < (sizeof(boss->hammerArmSegmentPositions) / sizeof((boss->hammerArmSegmentPositions)[0])); i++) {
            boss->hammerArmSegmentAngles[i] = ((int)((((double)(270)) / 360.0) * 1024));
            boss->hammerArmSegmentPositions[i] = gUnknown_080D7A58[i];
        }

        boss->hammerAngle = ((int)((((double)(270)) / 360.0) * 1024));
        if (boss->hammerExtension & 2) {
            boss->hammerExtension = 1;
        } else {
            boss->hammerExtension = boss->hammerExtension << 1;
        }
    }
}

static void StateHandler_HammerExtend(EggHammerTankII *boss)
{
    u8 i, j;
    s16 acc, val;
    for (i = 0, val = 1; i < (sizeof(gUnknown_080D7A98) / sizeof((gUnknown_080D7A98)[0])); i++) {
        if ((boss->hammerExtension & val)) {
            val = gUnknown_080D7A98[i];
            break;
        }
        val = val << 1;
    }

    acc = 0;
    for (j = 0; j < 8; j++) {
        acc += val;
        boss->hammerArmSegmentPositions[j] += acc;
    }

    if (--boss->timer == 0) {
        boss->timer = 15;
        boss->hammerState = 2;
    }
}

static void StateHandler_HammerPlunge(EggHammerTankII *boss)
{
    s32 x, y;
    u8 i, val;
    s32 result;

    for (i = 0, val = 1; i < (sizeof(gUnknown_080D7AA2) / sizeof((gUnknown_080D7AA2)[0])); i++) {
        if (boss->hammerExtension & val) {
            val = gUnknown_080D7AA2[i];
            break;
        }
        val <<= 1;
    }

    boss->hammerAngle -= ((gSineTable[(((60 - boss->timer)*4))]) >> 9);
    boss->hammerAngle &= (1024 - 1);
    boss->hammerArmSegmentAngles[0] = boss->hammerAngle;

    for (i = 1; i < (sizeof(boss->hammerArmSegmentPositions) / sizeof((boss->hammerArmSegmentPositions)[0])); i++) {
        boss->hammerArmSegmentAngles[i]
            += ((int)(((boss->hammerArmSegmentAngles[i - 1] - boss->hammerArmSegmentAngles[i]) * gUnknown_080D7A78[i]) >> 8));
    }

    x = ((int)((boss->x) >> 8)) + ((boss->hammerArmSegmentPositions[7] * (gSineTable[((boss->hammerArmSegmentAngles[7] - val) & (1024 - 1)) + 256])) >> 0x17);
    y = ((int)((boss->y) >> 8)) + ((boss->hammerArmSegmentPositions[7] * (gSineTable[((boss->hammerArmSegmentAngles[7] - val) & (1024 - 1))])) >> 0x17);

    result = sub_801E6D4(y, x, 1, 8, 
# 761 "src/game/bosses/boss_1.c" 3 4
                                    ((void *)0)
# 761 "src/game/bosses/boss_1.c"
                                        , sub_801EE64);

    if (result < 1) {
        m4aSongNumStart(238);
        boss->timer = 30;
        boss->hammerState = 4;

        result = sub_8004418((gSineTable[((boss->hammerArmSegmentAngles[7] + val) & (1024 - 1))]) >> 6,
                             ((gSineTable[((boss->hammerArmSegmentAngles[7] + val) & (1024 - 1)) + 256]) >> 6) + result);

        for (i = 0; i < (sizeof(boss->hammerArmSegmentPositions) / sizeof((boss->hammerArmSegmentPositions)[0])); i++) {
            boss->hammerArmSegmentAngles[i] = result;
        }
        boss->hammerAngle = result;
        CreateScreenShake(0x800, 0x10, 0x80, 0x14, 0x83);
    } else if (--boss->timer == 0) {
        boss->timer = 30;
        boss->hammerState = 4;
    }
}

static void StateHandler_HammerHold(EggHammerTankII *boss)
{
    u8 i;
    s32 val;

    boss->hammerAngle += ((int)((((double)(2.8125)) / 360.0) * 1024));
    boss->hammerArmSegmentAngles[0] = boss->hammerAngle;

    for (i = 1; i < (sizeof(boss->hammerArmSegmentAngles) / sizeof((boss->hammerArmSegmentAngles)[0])); i++) {
        boss->hammerArmSegmentAngles[i]
            += ((int)(((boss->hammerArmSegmentAngles[i - 1] - boss->hammerArmSegmentAngles[i]) * gUnknown_080D7A78[i + 8]) >> 8));
    }

    for (i = 0, val = 1; i < (sizeof(gUnknown_080D7A98) / sizeof((gUnknown_080D7A98)[0])); i++) {
        if (boss->hammerExtension & val) {
            val = gUnknown_080D7A98[i] * 2;
            break;
        }
        val <<= 1;
    }

    if (boss->timer < 58) {
        for (i = 0; i < (sizeof(gUnknown_080D7A58) / sizeof((gUnknown_080D7A58)[0])); i++) {
            boss->hammerArmSegmentPositions[i] -= val;
            if (boss->hammerArmSegmentPositions[i] < gUnknown_080D7A58[i]) {
                boss->hammerArmSegmentPositions[i] = gUnknown_080D7A58[i];
            }
        }
    }

    boss->timer--;

    if (boss->timer == 0) {
        boss->timer = 0x50;
        boss->hammerState = 0;
    }
}

static void StateHandler_HammerDrag(EggHammerTankII *boss)
{
    s32 i;
    s32 acc, val;
    for (i = 0, val = 1; i < 5; i++) {
        if ((boss->hammerExtension & val)) {
            val = gUnknown_080D7A98[i] >> 2;
            break;
        }
        val = val << 1;
    }

    acc = val;
    for (i = 0; i < 8; i++) {
        acc += val;
        boss->hammerArmSegmentPositions[i] -= acc;
        if (boss->hammerArmSegmentPositions[i] < gUnknown_080D7A58[i]) {
            boss->hammerArmSegmentPositions[i] = gUnknown_080D7A58[i];
            boss->timer = 68;
            boss->hammerState = 5;
        }
    }

    boss->timer--;

    if (boss->timer == 0) {
        boss->timer = 68;
        boss->hammerState = 5;
    }
}

static void StateHandler_HammerRetract(EggHammerTankII *boss)
{
    u8 i;
    boss->hammerAngle += ((int)((((double)(4.21875)) / 360.0) * 1024));

    if (boss->hammerAngle > ((int)((((double)(270)) / 360.0) * 1024))) {




        boss->hammerAngle = ((int)((((double)(270)) / 360.0) * 1024));
    }

    boss->hammerArmSegmentAngles[0] = boss->hammerAngle;
    for (i = 1; i < 8; i++) {
        boss->hammerArmSegmentAngles[i]
            += ((int)(((boss->hammerArmSegmentAngles[i - 1] - boss->hammerArmSegmentAngles[i]) * gUnknown_080D7A78[i]) >> 8));
    }

    boss->timer--;

    if (boss->timer == 0) {
        boss->timer = 80;
        boss->hammerState = 0;
    }
}

static void HandleBossHit(EggHammerTankII *boss)
{
    Sprite *s;

    if (boss->health != 0) {
        boss->health--;
        if (boss->health & 1) {
            m4aSongNumStart(143);
        } else {
            m4aSongNumStart(235);
        }

        boss->timerInvulnerability = 30;

        s = &boss->pilot;
        if (boss->health == 0) {
            s->graphics.anim = 629;
            s->variant = 3;
            { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += 1000; divResA = ({((50000) != 0) ? ((s32)(gLevelScore) / (s32)(50000)) : 0;}); divResB = ({((50000) != 0) ? ((s32)(oldScore) / (s32)(50000)) : 0;}); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (1) gMusicManagerState.unk3 = 0x10 | 0x0; } };
        } else {
            s->graphics.anim = 629;
            s->variant = 2;
        }

        s->prevVariant = -1;
    }

    if (!((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && boss->health == 4) {
        gMusicManagerState.unk1 = 0x11;
    }
}

static void HandlePilotAnim(EggHammerTankII *boss)
{
    Sprite *s = &boss->pilot;
    if (boss->timerInvulnerability > 0) {
        boss->timerPilotLaugh = 0;

        if (--boss->timerInvulnerability > 0) {
            return;
        }

        if (boss->health == 0) {
            s->graphics.anim = 629;
            s->variant = 3;
        } else {
            s->graphics.anim = 629;
            s->variant = 0;
        }
        s->prevVariant = -1;
    } else {
        if (boss->timerPilotLaugh == 0) {
            return;
        }

        if (--boss->timerPilotLaugh > 0) {
            return;
        }

        s->graphics.anim = 629;
        s->variant = 0;
        s->prevVariant = -1;
    }
}

static void DestructionScene_UpdateComponents(EggHammerTankII *boss)
{
    s32 result;
    u8 i;
    DestructionScene *ds = &boss->destructionScene;
    if (ds->bodySpeedX < 0) {
        ds->bodySpeedX = 0;
    }

    ds->bodySpeedY += ((s32)((0.25)*256));
    ds->bodyX += ds->bodySpeedX;
    ds->bodyY += ds->bodySpeedY;

    result = sub_801F100(((int)((ds->bodyY) >> 8)) + 28, ((int)((ds->bodyX) >> 8)), 1, 8, sub_801EC3C);
    if (ds->axelsJoinedRemainingBounces > 0) {
        ds->wheels[0].x = ds->bodyX - ((s32)((22)*256));
        ds->wheels[0].y = ds->bodyY + boss->frontAxelY + ((s32)((14.5)*256));
        ds->wheels[1].x = ds->bodyX + ((s32)((24)*256));
        ds->wheels[1].y = ds->bodyY + boss->rearAxelY + ((s32)((14.5)*256));
        ds->wheels[2].x = ds->bodyX - ((s32)((22)*256));
        ds->wheels[2].y = ds->bodyY + boss->frontAxelY + ((s32)((14.5)*256));
        ds->wheels[3].x = ds->bodyX + ((s32)((24)*256));
        ds->wheels[3].y = ds->bodyY + boss->rearAxelY + ((s32)((14.5)*256));
    } else {

        for (i = 0; i < 4; i++) {
            s32 result1;
            ds->wheels[i].speedX--;
            if (ds->wheels[i].speedX < ((s32)((0.5)*256))) {
                ds->wheels[i].speedX = ((s32)((0.5)*256));
            }
            ds->wheels[i].speedY += ((s32)((0.15625)*256));
            ds->wheels[i].x += ds->wheels[i].speedX;
            ds->wheels[i].y += ds->wheels[i].speedY;

            result1 = sub_801F100(((int)((ds->wheels[i].y) >> 8)), ((int)((ds->wheels[i].x) >> 8)), 1, 8, sub_801EC3C);
            if (result1 < 0) {
                s32 r0;
                if (ds->wheels[i].remainingBounces != 0) {
                    ds->wheels[i].remainingBounces--;
                }
                ds->wheels[i].y += ((s32)((result1)*256));
                r0 = ds->wheels[i].speedY * 3;
                r0 = (r0 * 4) - ds->wheels[i].speedY;
                r0 *= 16;
                ds->wheels[i].speedY = ((int)((-r0) >> 8));
            }

            if (ds->wheels[i].remainingBounces == 0) {
                if (ds->wheels[i].despawnTimeout != 0) {
                    ds->wheels[i].despawnTimeout--;
                }
            }
        }
    }

    if (result < 0) {
        if (ds->axelsJoinedRemainingBounces > 0) {
            ds->axelsJoinedRemainingBounces--;
            ds->bodySpeedY = -ds->bodySpeedY;
        } else {
            s32 r0;
            ds->bodySpeedX -= ((s32)((0.125)*256));
            r0 = (ds->bodySpeedY * 27);
            ds->bodySpeedY = ((int)((-(r0 * 8)) >> 8));
        }

        if (ds->bodySpeedY > -160) {
            ds->bodySpeedY = 0;
        }

        ds->bodyY += ((s32)((result) << 8));
    }

    for (i = 0; i < 8; i++) {
        ds->armSegments[i].speedY += ((s32)((0.125)*256));
        if (ds->armSegments[i].speedX > 0) {
            ds->armSegments[i].x += ds->armSegments[i].speedX;
        }

        ds->armSegments[i].y += ds->armSegments[i].speedY;

        result = sub_801F100(((int)((ds->armSegments[i].y) >> 8)) + 5, ((int)((ds->armSegments[i].x) >> 8)), 1, 8, sub_801EC3C);

        if (result < 0) {
            if (ds->armSegments[i].remainingBounces != 0) {
                ds->armSegments[i].remainingBounces--;
            }
            ds->armSegments[i].speedX -= ((s32)((0.125)*256));
            ds->armSegments[i].y += ((s32)((result) << 8));
            ds->armSegments[i].speedY = ((int)((ds->armSegments[i].speedY * ((i * 4) - ((s32)((0.25)*256)))) >> 8));
        }

        if (ds->armSegments[i].remainingBounces == 0) {
            if (ds->armSegments[i].despawnTimeout != 0) {
                ds->armSegments[i].despawnTimeout--;
            }
        }

        ds->hammerArmSegments[i].speedY += 40;
        if (ds->hammerArmSegments[i].speedX > 0) {
            ds->hammerArmSegments[i].x += ds->hammerArmSegments[i].speedX;
        }

        ds->hammerArmSegments[i].y += ds->hammerArmSegments[i].speedY;

        result = sub_801F100(((int)((ds->hammerArmSegments[i].y) >> 8)) + 5, ((int)((ds->hammerArmSegments[i].x) >> 8)), 1, 8, sub_801EC3C);

        if (result < 0) {
            if (ds->hammerArmSegments[i].remainingBounces != 0) {
                ds->hammerArmSegments[i].remainingBounces--;
            }
            ds->hammerArmSegments[i].speedX -= 32;
            ds->hammerArmSegments[i].y += ((s32)((result) << 8));
            ds->hammerArmSegments[i].speedY = ((int)((ds->hammerArmSegments[i].speedY * -((i * 4) + 64)) >> 8));
        }

        if (ds->hammerArmSegments[i].remainingBounces == 0) {
            if (ds->hammerArmSegments[i].despawnTimeout != 0) {
                ds->hammerArmSegments[i].despawnTimeout--;
            }
        }
    }

    ds->hammerSpeedY += ((s32)((0.375)*256));
    ds->hammerX += ds->hammerSpeedX;
    ds->hammerY += ds->hammerSpeedY;

    result = sub_801F100(((int)((ds->hammerY) >> 8)) + 24, ((int)((ds->hammerX) >> 8)), 1, 8, sub_801EC3C);
    if (result < 0) {
        ExplosionPartsInfo parts;

        if (ds->hammerState == 0) {
            u32 rand;
            parts.spawnX = ((int)((ds->hammerX) >> 8)) - gCamera.x;
            parts.spawnY = ((int)((ds->hammerY) >> 8)) - gCamera.y;
            parts.velocity = 0;
            parts.rotation = 1000;
            parts.speed = ((s32)((3)*256));
            parts.vram = (void *)&VRAM[0x10000] + 0x2980;
            parts.anim = 619;
            parts.variant = 0;
            parts.unk4 = 0;
            CreateBossParticleWithExplosionUpdate(&parts, &ds->numPartsCreated);

            rand = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            parts.spawnX = (((int)((ds->hammerX) >> 8)) - gCamera.x) + (rand & 15);
            rand = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            parts.spawnY = (((int)((ds->hammerY) >> 8)) - gCamera.y) + (rand & 15);

            CreateBossParticleWithExplosionUpdate(&parts, &ds->numPartsCreated);

            rand = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            parts.spawnX = (((int)((ds->hammerX) >> 8)) - gCamera.x) + (rand & 15);
            rand = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            parts.spawnY = (((int)((ds->hammerY) >> 8)) - gCamera.y) + (rand & 15);

            CreateBossParticleWithExplosionUpdate(&parts, &ds->numPartsCreated);
        }

        if (ds->hammerSpeedY < ((s32)((3)*256))) {
            if (ds->hammerState == 0) {
                ds->hammerState = 1;
            }
            ds->hammerSpeedY = 0;
        }
        if (ds->hammerBounceSide != 0) {
            ds->hammerBounceSide = 0;
        } else {
            ds->hammerBounceSide = 1;
        }
        ds->hammerSpeedX -= 32;

        if (ds->hammerSpeedX < 0) {
            ds->hammerSpeedX = 0;
        }

        ds->hammerY += ((s32)((result) << 8));
        ds->hammerSpeedY = ((int)((-(ds->hammerSpeedY * 192)) >> 8));
    }

    if (ds->hammerBounceSide != 0) {
        ds->hammerAngle = ({ s16 clamped = (ds->hammerAngle + ((int)((((double)(16.875)) / 360.0) * 1024))) & (1024 - 1); clamped; });
    } else {
        ds->hammerAngle = ({ s16 clamped = (ds->hammerAngle - ((int)((((double)(16.875)) / 360.0) * 1024))) & (1024 - 1); clamped; });
    }
}

static void InitDestructionScene(void)
{
    s8 i;
    EggHammerTankII *boss;
    DestructionScene *ds = &boss->destructionScene;
    s32 x, y;
    SpriteTransform *transform;
    Sprite *s;

    boss = (void *)((gCurTask)->data);

    ds = &boss->destructionScene;

    boss->sceneTimer = 0;
    ds->axelsJoinedRemainingBounces = 5;
    ds->numPartsCreated = 0;
    s = &boss->body;
    s->graphics.anim = 628;
    s->variant = 0;
    s->prevVariant = -1;

    ds->bodyX = boss->x;
    ds->bodyY = boss->y;
    ds->bodySpeedX = boss->speedX;
    ds->bodySpeedY = -((s32)((3)*256));

    for (i = 0; i < 4; i++) {
        if (i < 2) {
            ds->wheels[i].x = boss->x - ((s32)((22)*256));
        } else {
            ds->wheels[i].x = boss->x + ((s32)((24)*256));
        }

        ds->wheels[i].y = boss->y + boss->frontAxelY + ((s32)((14.5)*256));

        if (i < 2) {
            ds->wheels[i].speedX = boss->speedX + (i + 2) * 5;
        } else {
            ds->wheels[i].speedX = boss->speedX + i * 0x30;
        }

        ds->wheels[i].speedY = ((int)(((boss->frontAxelY * (-((s32)((0.375)*256)) - (i * 2)))) >> 8));
        ds->wheels[i].remainingBounces = 4;
        ds->wheels[i].despawnTimeout = 60;
    }

    for (i = 0; i < 8; i++) {
        ds->armSegments[i].x += gCamera.x;
        ds->armSegments[i].y += gCamera.y;

        ds->armSegments[i].x = ((s32)((ds->armSegments[i].x)*256));
        ds->armSegments[i].y = ((s32)((ds->armSegments[i].y)*256));

        ds->armSegments[i].speedX
            = boss->speedX + (((gSineTable[(boss->armSegmentAngles[i] & (1024 - 1)) + 256]) * boss->armSegmentPositions[i]) >> 18);

        ds->armSegments[i].speedY = ((gSineTable[(boss->armSegmentAngles[i] & (1024 - 1))]) * boss->armSegmentPositions[i]) >> 18;
        ds->armSegments[i].remainingBounces = 3;
        ds->armSegments[i].despawnTimeout = 30;
    }

    x = boss->x;
    y = boss->y;
    for (i = 0; i < 8; i++) {
        ds->hammerArmSegments[i].x = x
            + (((gSineTable[((boss->hammerArmSegmentAngles[i] + ((int)((((double)(270)) / 360.0) * 1024))) & (1024 - 1)) + 256]) * boss->hammerArmSegmentPositions[i]) >> 0xF);
        ds->hammerArmSegments[i].y = y
            + (((gSineTable[((boss->hammerArmSegmentAngles[i] + ((int)((((double)(270)) / 360.0) * 1024))) & (1024 - 1))]) * boss->hammerArmSegmentPositions[i]) >> 0xf);
        ds->hammerArmSegments[i].speedX
            = boss->speedX + (((gSineTable[((boss->hammerArmSegmentAngles[i]) & (1024 - 1)) + 256]) * boss->hammerArmSegmentPositions[i]) >> 0x12);
        ds->hammerArmSegments[i].speedY
            = ((gSineTable[(boss->hammerArmSegmentAngles[i] & (1024 - 1))]) * boss->hammerArmSegmentPositions[i]) >> 18;
        ds->hammerArmSegments[i].remainingBounces = 3;
        ds->hammerArmSegments[i].despawnTimeout = 30;
    }

    transform = &boss->transform;
    ds->hammerX = x + (((gSineTable[(boss->hammerArmSegmentAngles[5] & (1024 - 1)) + 256]) * boss->hammerArmSegmentPositions[5]) >> 15);
    ds->hammerY = y + (((gSineTable[(boss->hammerArmSegmentAngles[5] & (1024 - 1))]) * boss->hammerArmSegmentPositions[5]) >> 15);
    ds->hammerSpeedX = boss->speedX;
    ds->hammerSpeedY = boss->speedY - ((s32)((8)*256));
    ds->hammerAngle = transform->rotation;
    ds->hammerBounceSide = 1;
    ds->hammerState = 0;
}

static void DestructionScene_Render(EggHammerTankII *boss)
{
    u8 result;
    s32 i;
    Sprite *s;
    ExplosionPartsInfo init;
    DestructionScene *ds = &boss->destructionScene;

    SpriteTransform *transform;
    bool8 *pilotEscaped;

    boss->sceneTimer++;

    result = ({((60) != 0) ? ((s32)(boss->sceneTimer) / (s32)(60)) : 0;});
    result = boss->sceneTimer + (result * -60);

    if (!(boss->sceneTimer & 7)) {
        i = result - (({((6) != 0) ? ((s32)(result) / (s32)(6)) : 0;}) * 6);

        init.spawnX = ((int)((ds->bodyX) >> 8)) - gCamera.x;
        init.spawnY = ((int)((ds->bodyY) >> 8)) - gCamera.y;
        init.velocity = 0x40;
        init.rotation = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & (1024 - 1);
        init.speed = 0x600;
        init.vram = (void *)&VRAM[0x10000] + (gTileInfoBossScrews[i][0] * 32);
        init.anim = gTileInfoBossScrews[i][1];
        init.variant = gTileInfoBossScrews[i][2];
        init.unk4 = 1;
        CreateBossParticleWithExplosionUpdate(&init, &ds->numPartsCreated);
    }

    if (({((13) != 0) ? ((s32)(boss->sceneTimer + ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; })) % (s32)(13)) : 0;}) == 0) {
        m4aSongNumStart(144);
    }

    s = &boss->body;
    s->x = ((int)((ds->bodyX) >> 8)) - gCamera.x;
    s->y = ((int)((ds->bodyY) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);


    pilotEscaped = &boss->pilotEscaped;

    for (i = 0; i < 2; i++) {
        result += 15;
        if (result == 60) {
            init.spawnX = s->x;
            init.spawnY = s->y;
            init.velocity = 0;
            init.rotation = 1000;
            init.speed = ((s16)((3)*256));
            init.vram = (void *)&VRAM[0x10000] + 0x2980;
            init.anim = 619;
            init.variant = 0;
            init.unk4 = 1;
            CreateBossParticleWithExplosionUpdate(&init, &ds->numPartsCreated);
            result = 0;
        } else if (result > 60) {
            result -= 60;
        }

        result += 15;
        if (result == 60) {
            init.spawnX = s->x + 10;
            init.spawnY = s->y + 16;
            init.velocity = 0;
            init.rotation = 1000;
            init.speed = ((s16)((3)*256));
            init.vram = (void *)&VRAM[0x10000] + 0x2980;
            init.anim = 619;
            init.variant = 0;
            init.unk4 = 1;
            CreateBossParticleWithExplosionUpdate(&init, &ds->numPartsCreated);
            result = 0;
        } else if (result > 60) {
            result -= 60;
        }

        result += 15;
        if (result == 60) {
            init.spawnX = s->x - 10;
            init.spawnY = s->y + 8;
            init.velocity = 0;
            init.rotation = 1000;
            init.speed = ((s16)((3)*256));
            init.vram = (void *)&VRAM[0x10000] + 0x2980;
            init.anim = 619;
            init.variant = 0;
            init.unk4 = 1;
            CreateBossParticleWithExplosionUpdate(&init, &ds->numPartsCreated);
            result = 0;
        } else if (result > 60) {
            result -= 60;
        }

        result += 15;
        if (result == 60) {
            init.spawnX = s->x + 10;
            init.spawnY = s->y - 0x10;
            init.velocity = 0;
            init.rotation = 1000;
            init.speed = ((s16)((3)*256));
            init.vram = (void *)&VRAM[0x10000] + 0x2980;
            init.anim = 619;
            init.variant = 0;
            init.unk4 = 1;
            CreateBossParticleWithExplosionUpdate(&init, &ds->numPartsCreated);
            result = 0;
        } else if (result > 60) {
            result -= 60;
        }

        result += 15;
        if (result == 60) {
            init.spawnX = s->x - 10;
            init.spawnY = s->y - 8;
            init.velocity = 0;
            init.rotation = 1000;
            init.speed = ((s16)((3)*256));
            init.vram = (void *)&VRAM[0x10000] + 0x2980;
            init.anim = 619;
            init.variant = 0;
            init.unk4 = 1;
            CreateBossParticleWithExplosionUpdate(&init, &ds->numPartsCreated);
            result = 0;
        } else if (result > 60) {
            result -= 60;
        }
    }

    if (s->x < 50 && !*pilotEscaped) {
        *pilotEscaped = 1;
        CreateEggmobileEscapeSequence(s->x, s->y, ((2) << (12)));
    }

    if (((int)((ds->bodyX) >> 8)) - gCamera.x < -200) {
        ds->fade.window = 0;
        ds->fade.brightness = 0;
        ds->fade.flags = 2;
        ds->fade.speed = 0;
        ds->fade.bldCnt = 0xBF;
        ds->fade.bldAlpha = 0;
        boss->sceneTimer = 0;
        gCurTask->main = Task_DestructionSceneOutro;
    }

    if (!*pilotEscaped) {
        s = &boss->pilot;
        s->x = ((int)((ds->bodyX) >> 8)) - gCamera.x;
        s->y = ((int)((ds->bodyY) >> 8)) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (ds->wheels[0].remainingBounces != 0 || (ds->wheels[0].despawnTimeout & 1)) {
        s = &boss->wheel;
        s->x = ((int)((ds->wheels[0].x) >> 8)) - gCamera.x;
        s->y = ((int)((ds->wheels[0].y) >> 8)) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (ds->wheels[1].remainingBounces != 0 || (ds->wheels[1].despawnTimeout & 1)) {
        s = &boss->wheel;
        s->x = ((int)((ds->wheels[1].x) >> 8)) - gCamera.x;
        s->y = ((int)((ds->wheels[1].y) >> 8)) - gCamera.y;
        DisplaySprite(s);
    }

    if (ds->wheels[2].remainingBounces != 0 || (ds->wheels[2].despawnTimeout & 1)) {
        s = &boss->brokenWheel;
        s->x = ((int)((ds->wheels[2].x) >> 8)) - gCamera.x;
        s->y = ((int)((ds->wheels[2].y) >> 8)) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (ds->wheels[3].remainingBounces != 0 || (ds->wheels[3].despawnTimeout & 1)) {
        s = &boss->brokenWheel;
        s->x = ((int)((ds->wheels[3].x) >> 8)) - gCamera.x;
        s->y = ((int)((ds->wheels[3].y) >> 8)) - gCamera.y;
        DisplaySprite(s);
    }

    s = &boss->armSegment;
    s->oamFlags = ((18) << 6);

    for (i = 6; i > -1; i--) {
        s->x = ((int)((ds->armSegments[i].x) >> 8)) - gCamera.x;
        s->y = ((int)((ds->armSegments[i].y) >> 8)) - gCamera.y;
        if (ds->armSegments[i].remainingBounces != 0 || (ds->armSegments[i].despawnTimeout != 0 && boss->sceneTimer & 1)) {
            DisplaySprite(s);
        }
    }

    s = &boss->armSegment;
    s->oamFlags = ((25) << 6);
    for (i = 0; i < 6; i++) {
        s->x = ((int)((ds->hammerArmSegments[i].x) >> 8)) - gCamera.x;
        s->y = ((int)((ds->hammerArmSegments[i].y) >> 8)) - gCamera.y;
        if (ds->hammerArmSegments[i].remainingBounces != 0 || (ds->hammerArmSegments[i].despawnTimeout != 0 && boss->sceneTimer & 1)) {
            DisplaySprite(s);
        }
    }

    s = &boss->hammer;
    transform = &boss->transform;

    s->x = ((int)((ds->hammerX) >> 8)) - gCamera.x;
    s->y = ((int)((ds->hammerY) >> 8)) - gCamera.y;
    s->frameFlags = gOamMatrixIndex++ | 0x2060;

    if (ds->hammerState != 0) {
        ds->hammerState = 2;
    } else {
        transform->rotation = ds->hammerAngle;
        transform->qScaleX = ((s32)((1)*256));
        transform->qScaleY = ((s32)((1)*256));
        transform->x = s->x;
        transform->y = s->y;
        TransformSprite(s, transform);
        DisplaySprite(s);
    }
}

void EggHammerTankIIMove(s32 x, s32 y)
{
    u8 i;
    EggHammerTankII *boss = (void *)((gActiveBossTask)->data);
    DestructionScene *ds = &boss->destructionScene;

    ds->bodyX += x;
    boss->x += x;
    ds->bodyY += y;
    boss->y += y;

    for (i = 0; i < 4; i++) {
        ds->wheels[i].x += x;
        ds->wheels[i].y += y;
    }

    for (i = 0; i < 8; i++) {
        ds->armSegments[i].x += x;
        ds->armSegments[i].y += y;
    }

    for (i = 0; i < 8; i++) {
        ds->hammerArmSegments[i].x += x;
        ds->hammerArmSegments[i].y += y;
    }

    ds->hammerX += x;
    ds->hammerY += y;
}

static void TaskDestructor_EggHammerTankII(struct Task *t)
{
    EggHammerTankII *boss = (void *)((t)->data);
    VramFree(boss->body.graphics.dest);
    VramFree(boss->armSegment.graphics.dest);
    VramFree(boss->hand.graphics.dest);
    VramFree(boss->pilot.graphics.dest);
    VramFree(boss->wheel.graphics.dest);
    VramFree(boss->brokenWheel.graphics.dest);
    VramFree(boss->hammer.graphics.dest);

    if (boss->cream.graphics.dest != 
# 1484 "src/game/bosses/boss_1.c" 3 4
                                    ((void *)0)
# 1484 "src/game/bosses/boss_1.c"
                                        ) {
        VramFree(boss->cream.graphics.dest);
    }
    if (boss->cheese.graphics.dest != 
# 1487 "src/game/bosses/boss_1.c" 3 4
                                     ((void *)0)
# 1487 "src/game/bosses/boss_1.c"
                                         ) {
        VramFree(boss->cheese.graphics.dest);
    }

    gActiveBossTask = 
# 1491 "src/game/bosses/boss_1.c" 3 4
                     ((void *)0)
# 1491 "src/game/bosses/boss_1.c"
                         ;
}

static void Task_EggHammerTankII_Main(void)
{
    EggHammerTankII *boss = (void *)((gCurTask)->data);
    boss->x += boss->speedX;
    boss->y += boss->speedY;

    sGroundPhysicsHandlers[IsBossTouchingTerrain()]();
    sBossStateHandlers[boss->hammerState](boss);

    UpdateArmSegments(boss);
    HandleCollision(boss);
    HandlePilotAnim(boss);
    Render(boss);
    HandleBossHitPalette(boss);

    if (boss->health == 0) {
        InitDestructionScene();
        gCurTask->main = Task_DestructionScene_Main;
        Player_DisableInputAndBossTimer();
    }
}

static void Task_DestructionScene_Main(void)
{
    EggHammerTankII *boss = (void *)((gCurTask)->data);

    DestructionScene_UpdateComponents(boss);
    DestructionScene_Render(boss);
}

static bool8 IsBossTouchingTerrain(void)
{
    EggHammerTankII *boss = (void *)((gCurTask)->data);
    s32 x, y;
    s32 result;
    x = (boss->x + ((s32)((24)*256)));
    y = (boss->y + boss->rearAxelY + ((s32)((14.5)*256)));

    result = sub_801F100(((int)((y) >> 8)), ((int)((x) >> 8)), 1, 8, sub_801EC3C);
    if (result > 0) {
        x = (boss->x - ((s32)((22)*256)));
        y = (boss->y + boss->frontAxelY + ((s32)((14.5)*256)));
        result = sub_801F100(((int)((y) >> 8)), ((int)((x) >> 8)), 1, 8, sub_801EC3C);

        if (result > 0) {
            return 0;
        }
    }

    return 1;
}

static void PhysicsHandler_Falling(void)
{
    EggHammerTankII *boss = (void *)((gCurTask)->data);
    boss->speedY += ((s32)((0.25)*256));
    boss->rearAxelY += ((s32)((1.125)*256));
    boss->frontAxelY += ((s32)((1.125)*256));

    if (boss->rearAxelY > ((s32)((23.5)*256))) {
        boss->rearAxelY = ((s32)((23.5)*256));
    }

    if (boss->frontAxelY > ((s32)((23.5)*256))) {
        boss->frontAxelY = ((s32)((23.5)*256));
    }
}

static void UpdateArmSegments(EggHammerTankII *boss)
{
    u8 i;
    boss->armBaseSin = (boss->armBaseSin + 8) & (1024 - 1);
    boss->armBaseAngle = (gSineTable[(boss->armBaseSin)]) >> 8;
    boss->armSegmentAngles[0] = boss->armBaseAngle;

    for (i = 1; i < (sizeof(boss->armSegmentPositions) / sizeof((boss->armSegmentPositions)[0])); i++) {
        boss->armSegmentAngles[i] += ((int)(((boss->armSegmentAngles[i - 1] - boss->armSegmentAngles[i]) * sQArmSegmentAngleOffsets[i] - ((s32)((12)*256))) >> 8));
    }
}





static void StateHandler_HammerAim(EggHammerTankII *boss)
{
    if (--boss->timer == 0) {
        boss->timer = 60;
        boss->hammerState = 3;
    }
}

static void StateHandler_HammerSlam(EggHammerTankII *boss)
{
    if (--boss->timer == 0) {
        if (((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((-0) + (4 - 1))) + (0)) != 0) {
            boss->timer = 68;
            boss->hammerState = 5;
        } else {
            m4aSongNumStart(239);
            boss->timer = 60;
            boss->hammerState = 6;
        }
    }
}

static void PilotLaugh(EggHammerTankII *boss)
{
    boss->timerPilotLaugh = 30;
    if (boss->timerInvulnerability == 0) {
        Sprite *s = &boss->pilot;
        s->graphics.anim = 629;
        s->variant = 1;
        s->prevVariant = -1;
    }
}

static void HandleBossHitPalette(EggHammerTankII *boss)
{
    if (boss->timerInvulnerability > 0) {
        u8 i;

        for (i = 0; i < 16u; i++) {
            gObjPalette[(8)*16u + (i)] = (gUnknown_080D7AD0[(boss->timerInvulnerability & 4) >> 2][i]);;
        }

        gFlags |= 0x2;
    }
}
