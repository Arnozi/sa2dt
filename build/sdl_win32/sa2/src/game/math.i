# 0 "src/game/math.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/math.c"
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
# 2 "src/game/math.c" 2
# 1 "include/game/math.h" 1



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
# 5 "include/game/math.h" 2


struct UNK_8085F1C_1 {
    s16 unk0;
    s16 unk2[9];
    s32 unk14;
    s32 unk18;
    s32 unk1C;
};

struct UNK_8085F1C {
    struct UNK_8085F1C *unk0;
    u8 unk4[8];
    u32 unkC;
    s32 unk10;
    struct UNK_8085F1C_1 unk14;
    struct UNK_8085F1C_1 unk34;

    s16 unk54;
    s16 unk56;
    s16 unk58;
    u8 unk59[2];

    s16 unk5C;
    s16 unk5E;
    s16 unk60;
    u8 unk62[2];

    s32 unk64;
    s32 unk68;
    s32 unk6C;

    u8 unk70[4];
};


u16 Random(void);
# 60 "include/game/math.h"
void SeedRng(u32 a, u32 b);

struct UNK_8085F1C_1 *sub_80853F8(struct UNK_8085F1C *p1);

u32 AbsMax(s32 a, s32 b);

u32 sub_8085530(s32 a, s32 b);
s16 sub_808558C(u16 a, u16 b, u8 c);
u32 sub_80855C0(s32 a, s32 b, s32 c, u8 d);
s32 sub_8085698(s32 a, s32 b, s32 c, u8 d, u8 e);
s32 sub_8085654(s32, s32, s32, u8, u8);
s16 sub_8085968(s16 *unk28, u16 param1);


u16 sub_80859F4(s16 *, u16);
# 3 "src/game/math.c" 2

# 1 "include/trig.h" 1



# 1 "include/global.h" 1
# 5 "include/trig.h" 2

extern const s16 gSineTable[1280];
# 5 "src/game/math.c" 2


typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} UNK_8085D14;


typedef struct {
    u16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s32 unk8;
    s32 unkC;
    u16 unk10;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} UNK_8085D14_2;

typedef struct {
    void *unk0;
    void *start;
    void *next;
    void *unkC;
} UNK_8085DEC;


u32 gRngPrevValue = 0;
u32 gRngValue = 0;

struct UNK_8085F1C_1 *sub_8085EC4(struct UNK_8085F1C *p1);
static bool8 sub_8085D98(UNK_8085DEC *thing, UNK_8085DEC *target);
void sub_8084B54(struct UNK_8085F1C_1 *, u16, u16, u16);

const u16 gUnknown_080E0290[] = { 0x0AAA, 0x02AA };





void sub_80832FC() { }


void sub_808343C() { }


void sub_8083504(UNK_8085D14_2 *arg0, UNK_8085D14_2 *arg1, UNK_8085D14_2 *arg2)
{
    s32 var_r3, var_r4;

    if (arg1->unk2 != 0x400) {
        var_r3 = (arg1->unk2 * arg0->unk8) >> 0xA;
        arg2->unk2 = ((arg1->unk2 * arg0->unk2) >> 0xA);
    } else {
        var_r3 = arg0->unk8;
    }
    if (arg1->unk4 != 0x400) {
        var_r4 = (arg1->unk4 * arg0->unkC) >> 0xA;
        arg2->unk4 = ((arg1->unk4 * arg0->unk4) >> 0xA);
    } else {
        var_r4 = arg0->unkC;
    }

    if (arg1->unk0 != 0) {
        arg2->unk8 = (arg1->unk8 + (((var_r3 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8) - ((var_r4 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8)));
        arg2->unkC = arg1->unkC + (((var_r3 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8) + ((var_r4 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8));
    } else {
        arg2->unk8 = (arg1->unk8 + var_r3);
        arg2->unkC = arg1->unkC + var_r4;
    }
    arg2->unk0 = ((arg0->unk0 + arg1->unk0) & (1024 - 1));
}


void sub_80835E0(UNK_8085D14_2 *arg0, UNK_8085D14_2 *arg1)
{
    s32 var_r3, var_r4;

    if (arg1->unk2 != 0x400) {
        var_r3 = (s32)(arg1->unk2 * arg0->unk8) >> 0xA;
        arg0->unk2 = (s16)((s32)(arg1->unk2 * arg0->unk2) >> 0xA);
    } else {
        var_r3 = arg0->unk8;
    }
    if (arg1->unk4 != 0x400) {
        var_r4 = (s32)(arg1->unk4 * arg0->unkC) >> 0xA;
        arg0->unk4 = (s16)((s32)(arg1->unk4 * arg0->unk4) >> 0xA);
    } else {
        var_r4 = arg0->unkC;
    }
    if (arg1->unk0 != 0) {
        arg0->unk8 = (arg1->unk8 + (((var_r3 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8) - ((var_r4 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8)));
        arg0->unkC = arg1->unkC + (((var_r3 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8) + ((var_r4 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8));
    } else {
        arg0->unk8 = (s32)(arg1->unk8 + var_r3);
        arg0->unkC = arg1->unkC + var_r4;
    }
    arg0->unk0 = ((arg0->unk0 + arg1->unk0) & (1024 - 1));
}

void sub_80836BC(UNK_8085D14_2 *arg0, UNK_8085D14_2 *arg1)
{
    s32 var_r3, var_r4;

    if (arg1->unk2 != 0x400) {
        var_r3 = (s32)(arg1->unk2 * arg0->unk8) >> 0xA;
        arg1->unk2 = (s16)((s32)(arg1->unk2 * arg0->unk2) >> 0xA);
    } else {
        var_r3 = arg0->unk8;
    }
    if (arg1->unk4 != 0x400) {
        var_r4 = (s32)(arg1->unk4 * arg0->unkC) >> 0xA;
        arg1->unk4 = (s16)((s32)(arg1->unk4 * arg0->unk4) >> 0xA);
    } else {
        var_r4 = arg0->unkC;
    }
    if (arg1->unk0 != 0) {
        arg1->unk8 = (arg1->unk8 + (((var_r3 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8) - ((var_r4 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8)));
        arg1->unkC = arg1->unkC + (((var_r3 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8) + ((var_r4 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8));
    } else {
        arg1->unk8 = (s32)(arg1->unk8 + var_r3);
        arg1->unkC = arg1->unkC + var_r4;
    }
    arg1->unk0 = ((arg0->unk0 + arg1->unk0) & (1024 - 1));
}

void sub_8083798(UNK_8085D14_2 *arg0)
{
    u16 temp_r0;

    if (arg0->unk2 != 0x400) {
        arg0->unk2 = ({((arg0->unk2) != 0) ? ((s32)(0x100000) / (s32)(arg0->unk2)) : 0;});
        arg0->unk8 = (arg0->unk2 * arg0->unk8) >> 0xA;
    }
    if (arg0->unk4 != 0x400) {
        arg0->unk4 = ({((arg0->unk4) != 0) ? ((s32)(0x100000) / (s32)(arg0->unk4)) : 0;});
        arg0->unkC = (arg0->unk4 * arg0->unkC) >> 0xA;
    }
    temp_r0 = (0x400 - arg0->unk0) & 0x3FF;
    arg0->unk0 = temp_r0;
    if (temp_r0 != 0) {
        s32 unk8, unkC;
        unk8 = ((-arg0->unk8 * ((gSineTable[(arg0->unk0) + 256]) >> 6)) >> 8) - ((-arg0->unkC * ((gSineTable[(arg0->unk0)]) >> 6)) >> 8);
        unkC = ((-arg0->unk8 * ((gSineTable[(arg0->unk0)]) >> 6)) >> 8) + ((-arg0->unkC * ((gSineTable[(arg0->unk0) + 256]) >> 6)) >> 8);

        arg0->unkC = unkC;
        arg0->unk8 = unk8;
        return;
    }
    arg0->unk8 = (0 - arg0->unk8);
    arg0->unkC = (0 - arg0->unkC);
}

void sub_8083858() { }


void sub_80838CC(UNK_8085D14 *arg0, UNK_8085D14 *arg1, UNK_8085D14 *arg2)
{
    arg2->unk0 = (((arg0->unk6 * arg1->unk0) + (arg0->unk0 * arg1->unk6) + (arg0->unk2 * arg1->unk4)) - (arg0->unk4 * arg1->unk2)) >> 0xA;
    arg2->unk2 = (((arg0->unk6 * arg1->unk2) - (arg0->unk0 * arg1->unk4)) + (arg0->unk2 * arg1->unk6) + (arg0->unk4 * arg1->unk0)) >> 0xA;
    arg2->unk4 = ((((arg0->unk6 * arg1->unk4) + (arg0->unk0 * arg1->unk2)) - (arg0->unk2 * arg1->unk0)) + (arg0->unk4 * arg1->unk6)) >> 0xA;
    arg2->unk6 = ((((arg0->unk6 * arg1->unk6) - (arg0->unk0 * arg1->unk0)) - (arg0->unk2 * arg1->unk2)) - (arg0->unk4 * arg1->unk4)) >> 0xA;
}

void sub_808399C(UNK_8085D14 *arg0, UNK_8085D14 *arg1)
{
    s16 r6 = arg0->unk0;
    s16 r5 = arg0->unk2;
    s16 r4 = arg0->unk4;
    arg0->unk0 = (((arg0->unk6 * arg1->unk0) + (r6 * arg1->unk6) + (r5 * arg1->unk4)) - (r4 * arg1->unk2)) >> 10;
    arg0->unk2 = (((arg0->unk6 * arg1->unk2) - (r6 * arg1->unk4)) + (r5 * arg1->unk6) + (r4 * arg1->unk0)) >> 10;
    arg0->unk4 = ((((arg0->unk6 * arg1->unk4) + (r6 * arg1->unk2)) - (r5 * arg1->unk0)) + (r4 * arg1->unk6)) >> 10;
    arg0->unk6 = ((((arg0->unk6 * arg1->unk6) - (r6 * arg1->unk0)) - (r5 * arg1->unk2)) - (r4 * arg1->unk4)) >> 10;
}

void sub_8083A48() { }


void sub_8083B10() { }



void sub_8083B88(struct UNK_8085F1C_1 *a, struct UNK_8085F1C_1 *b, struct UNK_8085F1C_1 *c)

{
}


void sub_8083E44() { }


void sub_8084090() { }


void sub_80842E4() { }


void sub_808442C() { }


void sub_808458C() { }


void sub_808477C() { }


void sub_8084904(UNK_8085D14 *arg0, u16 arg1)
{
    u32 *r1;
    s16 temp_r0;
    s16 temp_r1;
    u8 i;

    r1 = (u32 *)arg0;
    for (i = 0; i < sizeof(UNK_8085D14); i += 4) {
        *r1++ = 0;
    };
    ((UNK_8085D14 *)r1)->unk12 = 0x400;
    ((UNK_8085D14 *)r1)->unkA = 0x400;
    ((UNK_8085D14 *)r1)->unk2 = 0x400;
    temp_r1 = (gSineTable[(arg1)]) >> 4;
    temp_r0 = (gSineTable[(arg1) + 256]) >> 4;
    arg0->unkA = temp_r0;
    arg0->unkC = temp_r1;
    arg0->unk10 = -temp_r1;
    arg0->unk12 = temp_r0;
}

void sub_8084964(UNK_8085D14 *arg0, u16 arg1)
{
    u32 *r1;
    s16 temp_r0;
    s16 temp_r1;
    u8 i;

    r1 = (u32 *)arg0;
    for (i = 0; i < sizeof(UNK_8085D14); i += 4) {
        *r1++ = 0;
    };
    ((UNK_8085D14 *)r1)->unk12 = 0x400;
    ((UNK_8085D14 *)r1)->unkA = 0x400;
    ((UNK_8085D14 *)r1)->unk2 = 0x400;
    temp_r1 = (gSineTable[(arg1)]) >> 4;
    temp_r0 = (gSineTable[(arg1) + 256]) >> 4;
    arg0->unk2 = temp_r0;
    arg0->unk6 = -temp_r1;
    arg0->unkE = temp_r1;
    arg0->unk12 = temp_r0;
}

void sub_80849C4(UNK_8085D14 *arg0, u16 arg1)
{
    u32 *r1;
    s16 temp_r0;
    s16 temp_r1;
    u8 i;

    r1 = (u32 *)arg0;
    for (i = 0; i < sizeof(UNK_8085D14); i += 4) {
        *r1++ = 0;
    };
    ((UNK_8085D14 *)r1)->unk12 = 0x400;
    ((UNK_8085D14 *)r1)->unkA = 0x400;
    ((UNK_8085D14 *)r1)->unk2 = 0x400;
    temp_r1 = (gSineTable[(arg1)]) >> 4;
    temp_r0 = (gSineTable[(arg1) + 256]) >> 4;
    arg0->unk2 = temp_r0;
    arg0->unk4 = temp_r1;
    arg0->unk8 = -temp_r1;
    arg0->unkA = temp_r0;
}


void sub_8084A24() { }



void sub_8084B54(struct UNK_8085F1C_1 *matrix, u16 anglez, u16 angley, u16 anglex)
{
    s16 sy = (gSineTable[(angley)]) >> 4;
    s16 cy = (gSineTable[(angley) + 256]) >> 4;
    s16 sz = (gSineTable[(anglez)]) >> 4;
    s16 cz = (gSineTable[(anglez) + 256]) >> 4;
    s16 sx = (gSineTable[(anglex)]) >> 4;
    s16 cx = (gSineTable[(anglex) + 256]) >> 4;

    matrix->unk2[0] = ((cx * cz) >> 10) + ((((sx * sy) >> 10) * sz) >> 10);
    matrix->unk2[1] = ((sx * cy) >> 10);
    matrix->unk2[2] = ((-cx * sz) >> 10) + ((((sx * sy) >> 10) * cz) >> 10);
    matrix->unk2[3] = ((-sx * cz) >> 10) + ((sz * ((sy * cx) >> 10)) >> 10);
    matrix->unk2[4] = ((cx * cy) >> 10);
    matrix->unk2[5] = ((sz * sx) >> 10) + ((cz * ((sy * cx) >> 10)) >> 10);
    matrix->unk2[6] = ((cy * sz) >> 10);
    matrix->unk2[7] = -sy;
    matrix->unk2[8] = ((cy * cz) >> 10);

    matrix->unk1C = 0;
    matrix->unk18 = 0;
    matrix->unk14 = 0;
}


void sub_8084C70() { }



void sub_8084EAC() { }


void sub_8084EE0() { }


void sub_80851E0() { }


void sub_8085314(struct UNK_8085F1C_1 *p1, struct UNK_8085F1C_1 *p2)
{

    s32 unk0 = p2->unk0 * 2;
    s32 unk2 = p2->unk2[0] * 2;
    s32 unk4 = p2->unk2[1] * 2;
    s32 temp0 = (p2->unk2[0] * unk2 * 0x40) >> 0x10;
    s32 temp1 = (p2->unk2[1] * unk4 * 0x40) >> 0x10;

    s16 temp2, temp3, temp4, temp5, temp6;

    p1->unk14 = 0;
    p1->unk2[0] = 0x400 - (temp0 + temp1);

    temp2 = (p2->unk2[2] * unk4 * 0x40) >> 0x10;
    temp3 = (p2->unk0 * unk2 * 0x40) >> 0x10;

    p1->unk2[1] = temp3 - temp2;

    temp4 = (p2->unk0 * unk4 * 0x40) >> 0x10;
    temp5 = (p2->unk2[2] * unk2 * 0x40) >> 0x10;

    p1->unk2[2] = temp4 + temp5;
    p1->unk2[3] = temp3 + temp2;

    temp3 = (p2->unk0 * unk0 * 0x40) >> 0x10;
    p1->unk2[4] = 0x400 - (temp1 + temp3);

    temp1 = (p2->unk2[2] * unk0 * 0x40) >> 0x10;
    temp6 = (p2->unk2[0] * unk4 * 0x40) >> 0x10;

    p1->unk2[5] = temp6 - temp1;
    p1->unk2[6] = temp4 - temp5;
    p1->unk2[7] = temp6 + temp1;
    p1->unk2[8] = 0x400 - (temp3 + temp0);
    p1->unk1C = p1->unk14;
    p1->unk18 = p1->unk14;
}


struct UNK_8085F1C_1 *sub_80853F8(struct UNK_8085F1C *p1)
{
    if (!(p1->unkC & 1)) {
        if (p1->unk10 == 1) {
            sub_8084B54(&p1->unk34, p1->unk54, p1->unk56, p1->unk58);
            p1->unk34.unk2[0] = (p1->unk5C * p1->unk34.unk2[0]) >> 10;
            p1->unk34.unk2[1] = (p1->unk5C * p1->unk34.unk2[1]) >> 10;
            p1->unk34.unk2[2] = (p1->unk5C * p1->unk34.unk2[2]) >> 10;

            p1->unk34.unk2[3] = (p1->unk5E * p1->unk34.unk2[3]) >> 10;
            p1->unk34.unk2[4] = (p1->unk5E * p1->unk34.unk2[4]) >> 10;
            p1->unk34.unk2[5] = (p1->unk5E * p1->unk34.unk2[5]) >> 10;

            p1->unk34.unk2[6] = (p1->unk60 * p1->unk34.unk2[6]) >> 10;
            p1->unk34.unk2[7] = (p1->unk60 * p1->unk34.unk2[7]) >> 10;
            p1->unk34.unk2[8] = (p1->unk60 * p1->unk34.unk2[8]) >> 10;

            p1->unk34.unk14 = p1->unk64;
            p1->unk34.unk18 = p1->unk68;
            p1->unk34.unk1C = p1->unk6C;
        }
        p1->unkC |= 1;
    }

    return &p1->unk34;
}

u16 Random(void)
{
    u32 new;



    u32 *pPrev = &gRngPrevValue;
    u32 *pCurrent = &gRngValue;

    u32 prev = *pPrev;
    gRngPrevValue = *pCurrent;



    new = prev + 0x37119371;;
    new += *pCurrent;



    gRngValue = new;


    return ((u16 *)&gRngValue)[1];
}

void SeedRng(u32 a, u32 b)
{
    gRngPrevValue = a;
    gRngValue = b;
}

u32 AbsMax(s32 a, s32 b)
{
    if (a < 0) {
        a = -a;
    }

    if (b < 0) {
        b = -b;
    }

    if (b < a) {
        return a;
    }
    return b;
}




u32 sub_8085530(s32 a, s32 b)
{
    if (a < 0) {
        a = -a;
    }

    if (b < 0) {
        b = -b;
    }

    if (a > b) {
        return (((u64)a * ((s32)((0.9609375)*256))) + ((u64)b * ((s32)((0.3984375)*256)))) >> 8;
    } else {
        return (((u64)b * ((s32)((0.9609375)*256))) + ((u64)a * ((s32)((0.3984375)*256)))) >> 8;
    }
}

s16 sub_808558C(u16 angleA, u16 angleB, u8 numDecimalBits)
{
    u32 c1 = (1 << numDecimalBits);
    u16 c2 = c1 - 1;

    angleB -= angleA;
    angleB &= c2;

    if (angleB <= (c1 / 2)) {
        return angleB;
    } else {
        return (angleB - c1);
    }
}

u32 sub_80855C0(s32 a, s32 b, s32 c, u8 d)
{
    s64 e = (s64)c * (a - b);

    return a - (e >> d);
}

__attribute__((unused)) u16 sub_80855F8(u16 r7, u16 r2, u8 r6, s16 r5, u8 r4)
{
    u16 r2_2 = r2;
    u32 r3 = (1 << r6);
    s32 r1 = r3 - 1;
    u32 r0 = r2_2 - r7;
    u16 val;
    s32 r1_2;
    r2_2 = (r0 & r1);
    if (r2_2 > r3 >> 1) {
        r1_2 = (s16)(r2_2 - r3);
    } else {
        r1_2 = (s16)r2_2;
    }
    val = -((r5 * -r1_2) >> r4);
    return (r7 + val) & ((1 << r6) - 1);
}

s32 sub_8085654(s32 a, s32 b, s32 c, u8 d, u8 e)
{
    do {
        a -= (((s64)c * (s64)(a - b))) >> d;
        e -= 1;
    } while (e != 0xFF);

    return a;
}

s32 sub_8085698(s32 a, s32 b, s32 c, u8 d, u8 e)
{
    do {
        b = a - ((((s64)c * (s64)(a - b))) >> d);
        e -= 1;
    } while (e != 0xFF);

    return b;
}

__attribute__((unused)) s32 sub_80856DC(s32 a, s32 b, s32 c) { return (a * 7 + b * 6 - c) / 12; }

__attribute__((unused)) s32 sub_80856F8(s32 a, s32 b, s32 c) { return ((b * 6 - a) + c * 7) / 12; }

__attribute__((unused)) s32 sub_8085714(s32 a, s32 b, s32 c) { return ((a + b * 8) - c) >> 3; }

__attribute__((unused)) s32 sub_8085720(s32 a, s32 b, s32 c) { return ((b * 8 - a) + c) >> 3; }

__attribute__((unused)) s32 sub_808572C(s32 a, s32 b, s32 c, s32 d, u32 e, u8 f) { return ((s64)(b - a) * (s64)((1 << f) - c)) >> f; }

__attribute__((unused)) s32 sub_8085758(s32 a, s32 b) { return b - a; }

__attribute__((unused)) s32 sub_808575C(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, u8 g)
{
    a = c - a;
    a += a >> 1;
    a -= (b >> 1);
    return ((s64)(a) * ((1 << g) - d)) >> g;
}

__attribute__((unused)) s32 sub_8085798(s32 a, s32 b, s32 c) { return ((c - a) + ((c - a) >> 1)) - (b >> 1); }


__attribute__((unused)) s32 sub_80857A4(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, u8 g)
{
    a = c - a;
    a += a >> 1;
    a -= (b >> 1);
    return ((s64)(a) * ((1 << g) - d)) >> g;
}

__attribute__((unused)) s32 sub_80857E0(s32 a, s32 b, s32 c) { return ((c - a) + ((c - a) >> 1)) - (b >> 1); }

__attribute__((unused)) s32 sub_80857EC(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, u8 g)
{
    s32 h = ((s64)(b - a) * (s64)(f + (1 << g))) >> g;
    s64 i = ((s64)(c - b) * (s64)((1 << g) - f)) >> g;
    s64 h64 = h;
    s64 j = ((s32)(i - h) * (s64)((1 << (g - 1)) + (e >> 1))) >> g;
    return ((s64)(j + h64) * (s64)((1 << g) - d)) >> g;
}

__attribute__((unused)) s32 sub_80858A4(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, u8 g)
{
    s32 h = ((s64)(b - a) * (s64)(f + (1 << g))) >> g;
    s64 i = ((s64)(c - b) * (s64)((1 << g) - f)) >> g;
    s64 h64 = h;
    s64 j = ((s32)(i - h) * (s64)((1 << (g - 1)) - (e >> 1))) >> g;
    return ((s64)(j + h64) * (s64)((1 << g) - d)) >> g;
}

__attribute__((unused)) s32 sub_808595C(s32 a, s32 b, s32 c)
{
    s32 e = (b - a);
    s32 f = (c - b);
    f -= e;
    f >>= 1;
    return e + f;
}

s16 sub_8085968(s16 *unk28, u16 param1)
{
    s32 r7, r3, r5;
    u32 r0;
    r7 = (4095 - param1);

    r7 = (r7 * (((r7) * (r7)) >> 12)) >> 12;
    r0 = (r7 * unk28[0] * 171) >> 10;
    unk28++;

    r3 = ((param1) * (param1)) >> 12;
    r7 = (r3 * param1) >> 12;
    r0 += (unk28[0] * (((((r3 * param1) >> 13) - r3) + gUnknown_080E0290[0])));
    unk28++;

    r0 += (unk28[0] * (((((param1 + r3)) - r7) >> 1) + gUnknown_080E0290[1]));
    r0 += ((r7 * unk28[1] * 171) >> 10);

    return r0 / 4096;
}

u16 sub_80859F4(s16 *unk28, u16 unk5C)
{
    s32 r7, r3, r5;
    u32 r0;

    s16 *r4 = &unk28[unk5C / 4096];
    u16 r1 = unk5C % 4096;
    r7 = (4095 - r1);

    r7 = (r7 * (((r7) * (r7)) >> 12)) >> 12;
    r0 = (r7 * r4[0] * 171) >> 10;

    r3 = ((r1) * (r1)) >> 12;
    r7 = (r3 * r1) >> 12;

    r0 += (r4[1] * (((((r3 * r1) >> 13) - r3) + gUnknown_080E0290[0])));

    r4 += 2;

    r0 += (r4[0] * (((((r1 + r3)) - r7) >> 1) + gUnknown_080E0290[1]));
    r0 += ((r7 * r4[1] * 171) >> 10);

    r0 *= 1024;
    r0 /= 1024;
    return r0 / 4096;
}
# 645 "src/game/math.c"
__attribute__((unused)) void sub_8085A88(UNK_8085D14 *p1)
{
    p1->unk0 = 0;
    p1->unk2 = 0x400;
    p1->unk4 = 0x400;

    *(u32 *)&p1->unk8 = 0;
    *(u32 *)&p1->unkC = 0;
}

__attribute__((unused)) void sub_8085A9C(UNK_8085D14 *p1, u8 p2)
{
    u16 dist = Sqrt(((p1->unk0) * (p1->unk0)) + ((p1->unk2) * (p1->unk2)) + ((p1->unk4) * (p1->unk4)));
    u32 thing = (p2 << 1);
    s32 div = (1 << thing) / dist;
    p1->unk0 = (div * p1->unk0) >> p2;
    p1->unk2 = (div * p1->unk2) >> p2;
    p1->unk4 = (div * p1->unk4) >> p2;
}

__attribute__((unused)) s32 sub_8085B00(UNK_8085D14 *p1, UNK_8085D14 *p2, u8 p4)
{
    u32 something = p4;
    return ((p1->unk0 * p2->unk0) + (p1->unk2 * p2->unk2) + (p1->unk4 * p2->unk4)) >> p4;
}

__attribute__((unused)) void sub_8085B34(UNK_8085D14 *p1, UNK_8085D14 *p2, UNK_8085D14 *p3, u8 p4)
{
    u32 something = p4;
    p3->unk0 = ((p1->unk2 * p2->unk4) - (p1->unk4 * p2->unk2)) >> something;
    p3->unk2 = ((p1->unk4 * p2->unk0) - (p1->unk0 * p2->unk4)) >> something;
    p3->unk4 = ((p1->unk0 * p2->unk2) - (p1->unk2 * p2->unk0)) >> something;
}

__attribute__((unused)) void sub_8085B90(UNK_8085D14 *p1)
{
    p1->unk4 = 0;
    p1->unk2 = 0;
    p1->unk0 = 0;

    p1->unk6 = 0x400;
}

__attribute__((unused)) void sub_8085BA0(UNK_8085D14 *p1)
{
    p1->unk0 = -p1->unk0;
    p1->unk2 = -p1->unk2;
    p1->unk4 = -p1->unk4;
}

__attribute__((unused)) void sub_8085BB4(UNK_8085D14 *p1, u16 rad)
{
    s32 sin;
    rad = rad >> 1;
    sin = (gSineTable[(rad)]) >> 4;
    p1->unk0 = sin;
    p1->unk2 = 0;
    p1->unk4 = 0;
    p1->unk6 = (gSineTable[(rad) + 256]) >> 4;
}

__attribute__((unused)) void sub_8085BEC(UNK_8085D14 *p1, u16 rad)
{
    s32 sin;
    rad = rad >> 1;
    sin = (gSineTable[(rad)]) >> 4;
    p1->unk0 = 0;
    p1->unk2 = sin;
    p1->unk4 = 0;
    p1->unk6 = (gSineTable[(rad) + 256]) >> 4;
}

__attribute__((unused)) void sub_8085C24(UNK_8085D14 *p1, u16 rad)
{
    s32 sin;
    rad = rad >> 1;
    sin = (gSineTable[(rad)]) >> 4;
    p1->unk0 = 0;
    p1->unk2 = 0;
    p1->unk4 = sin;
    p1->unk6 = (gSineTable[(rad) + 256]) >> 4;
}

__attribute__((unused)) void sub_8085C5C(UNK_8085D14 *p1, u16 rad, UNK_8085D14 *p3)
{
    s32 sin;
    rad = rad >> 1;
    sin = (gSineTable[(rad)]) >> 4;
    p1->unk0 = (sin * p3->unk0) >> 10;
    p1->unk2 = (sin * p3->unk2) >> 10;
    p1->unk4 = (sin * p3->unk4) >> 10;
    p1->unk6 = (gSineTable[(rad) + 256]) >> 4;
}

__attribute__((unused)) void sub_8085CA8(UNK_8085D14 *p1)
{
    u8 i;
    UNK_8085D14 *curr = p1;

    for (i = 0; i < 32; i += 4) {



        u32 *p = (u32 *)curr;
        *p = 0;
        p++;
        curr = (UNK_8085D14 *)p;

    }
}

__attribute__((unused)) void sub_8085CC0(UNK_8085D14 *p1)
{
    u8 i;
    UNK_8085D14 *curr = p1;

    for (i = 0; i < 32; i += 4) {



        u32 *p = (u32 *)curr;
        *p = 0;
        p++;
        curr = (UNK_8085D14 *)p;

    }
    curr->unk12 = 0x400;
    curr->unkA = 0x400;
    curr->unk2 = 0x400;
}

__attribute__((unused)) void sub_8085CE4(UNK_8085D14 *p1, u32 p2, u32 p3, u32 p4)
{
    u8 i;
    UNK_8085D14 *curr = p1;

    for (i = 0; i < 32; i += 4) {



        u32 *p = (u32 *)curr;
        *p = 0;
        p++;
        curr = (UNK_8085D14 *)p;

    }
    curr->unk12 = 0x400;
    curr->unkA = 0x400;
    curr->unk2 = 0x400;

    p1->unk14 = p2;
    p1->unk18 = p3;
    p1->unk1C = p4;
}

__attribute__((unused)) void sub_8085D14(UNK_8085D14 *p1, u32 p2, u32 p3, u32 p4)
{
    u8 i;
    UNK_8085D14 *curr = p1;

    for (i = 0; i < 32; i += 4) {



        u32 *p = (u32 *)curr;
        *p = 0;
        p++;
        curr = (UNK_8085D14 *)p;

    }
    curr->unk12 = 0x400;
    curr->unkA = 0x400;
    curr->unk2 = 0x400;

    p1->unk2 = p2;
    p1->unkA = p3;
    p1->unk12 = p4;
}

__attribute__((unused)) void sub_8085D44(UNK_8085DEC *thing)
{
    thing->unk0 = 
# 826 "src/game/math.c" 3 4
                 ((void *)0)
# 826 "src/game/math.c"
                     ;
    thing->start = 
# 827 "src/game/math.c" 3 4
                  ((void *)0)
# 827 "src/game/math.c"
                      ;
    thing->next = 
# 828 "src/game/math.c" 3 4
                 ((void *)0)
# 828 "src/game/math.c"
                     ;
    thing->unkC = 
# 829 "src/game/math.c" 3 4
                 ((void *)0)
# 829 "src/game/math.c"
                     ;
}

__attribute__((unused)) UNK_8085DEC *sub_8085D50(UNK_8085DEC *thing)
{
    while (thing->unk0 != 
# 834 "src/game/math.c" 3 4
                         ((void *)0)
# 834 "src/game/math.c"
                             ) {
        thing = thing->unk0;
    }

    return thing;
}

__attribute__((unused)) void sub_8085D64(UNK_8085DEC *thing)
{
    if (thing->unk0 != 
# 843 "src/game/math.c" 3 4
                      ((void *)0)
# 843 "src/game/math.c"
                          ) {
        sub_8085D98(thing->unk0, thing);
    }
}

__attribute__((unused)) void sub_8085D78(UNK_8085DEC *thing, UNK_8085DEC *target)
{
    if (target->unk0 != 
# 850 "src/game/math.c" 3 4
                       ((void *)0)
# 850 "src/game/math.c"
                           ) {
        sub_8085D98(target->unk0, target);
    }
    target->unk0 = thing;
    target->next = thing->start;
    thing->start = target;
}

static bool8 sub_8085D98(UNK_8085DEC *thing, UNK_8085DEC *target)
{
    UNK_8085DEC *curr = thing->start;
    UNK_8085DEC *prev = 
# 861 "src/game/math.c" 3 4
                       ((void *)0)
# 861 "src/game/math.c"
                           ;

    while (curr != 
# 863 "src/game/math.c" 3 4
                  ((void *)0)
# 863 "src/game/math.c"
                      ) {
        if (curr == target) {
            if (prev == 
# 865 "src/game/math.c" 3 4
                       ((void *)0)
# 865 "src/game/math.c"
                           ) {
                thing->start = curr->next;
            } else {
                prev->next = curr->next;
            }
            target->unk0 = 
# 870 "src/game/math.c" 3 4
                          ((void *)0)
# 870 "src/game/math.c"
                              ;
            target->next = 
# 871 "src/game/math.c" 3 4
                          ((void *)0)
# 871 "src/game/math.c"
                              ;

            return 1;
        }
        prev = curr;
        curr = curr->next;
    }

    return 0;
}

__attribute__((unused)) u16 sub_8085DD0(UNK_8085DEC *thing)
{
    u16 num = 0;
    thing = thing->start;
    while (thing != 
# 886 "src/game/math.c" 3 4
                   ((void *)0)
# 886 "src/game/math.c"
                       ) {
        num++;
        thing = thing->next;
    }

    return num;
}

__attribute__((unused)) UNK_8085DEC *sub_8085DEC(UNK_8085DEC *thing, u16 num)
{
    thing = thing->start;
    while (thing != 
# 897 "src/game/math.c" 3 4
                   ((void *)0) 
# 897 "src/game/math.c"
                        && num != 0) {
        num--;
        thing = thing->next;
    }

    return thing;
}

__attribute__((unused)) void sub_8085E10(struct UNK_8085F1C *p1, struct UNK_8085F1C *p2) { memcpy(p2, &p1->unk10, 0x10); }

__attribute__((unused)) void sub_8085E24(struct UNK_8085F1C *p1, struct UNK_8085F1C *p2) { memcpy(&p1->unk10, p2, 0x10); }

__attribute__((unused)) void sub_8085E38(struct UNK_8085F1C *p1, struct UNK_8085F1C *p2)
{
    memcpy(p2, &p1->unk10, 0x10);

    while (p1 = p1->unk0, p1 != 
# 913 "src/game/math.c" 3 4
                               ((void *)0)
# 913 "src/game/math.c"
                                   ) {

        sub_80835E0((UNK_8085D14_2 *)p2, (UNK_8085D14_2 *)&p1->unk10);
    }
}

__attribute__((unused)) void sub_8085E64(struct UNK_8085F1C *p1)
{
    u8 i;
    struct UNK_8085F1C_1 *curr;
    p1->unk10 = 0;


    curr = &p1->unk34;
    for (i = 0; i < 0x20; i += 4) {



        u32 *p = (u32 *)curr;
        *p = 0;
        p++;
        curr = (struct UNK_8085F1C_1 *)p;

    }

    curr->unk2[8] = 0x400;
    curr->unk2[4] = 0x400;
    curr->unk2[0] = 0x400;
    p1->unkC |= 1;
}

__attribute__((unused)) void sub_8085E94(struct UNK_8085F1C *p1)
{
    p1->unk10 = 1;
    p1->unk58 = 0;
    p1->unk56 = 0;
    p1->unk54 = 0;
    p1->unk6C = 0;
    p1->unk68 = 0;
    p1->unk64 = 0;
    p1->unk60 = 0x400;
    p1->unk5E = 0x400;
    p1->unk5C = 0x400;
}

__attribute__((unused)) struct UNK_8085F1C_1 *sub_8085EC4(struct UNK_8085F1C *p1)
{
    struct UNK_8085F1C_1 *sub = 
# 960 "src/game/math.c" 3 4
                               ((void *)0)
# 960 "src/game/math.c"
                                   ;

    if (p1->unk0 != 
# 962 "src/game/math.c" 3 4
                   ((void *)0)
# 962 "src/game/math.c"
                       ) {
        sub = sub_8085EC4(p1);
    }

    if ((p1->unkC & 3) == 3) {
        if (sub == 
# 967 "src/game/math.c" 3 4
                  ((void *)0)
# 967 "src/game/math.c"
                      ) {
            return 
# 968 "src/game/math.c" 3 4
                  ((void *)0)
# 968 "src/game/math.c"
                      ;
        }
    } else {
        if (!(p1->unkC & 1)) {
            sub_80853F8(p1);

            p1->unkC |= 0x1;
            p1->unkC &= ~0x2;
        }
    }
    sub_8083B88(&p1->unk34, sub, &p1->unk14);
    return &p1->unk14;
}

__attribute__((unused)) struct UNK_8085F1C_1 *sub_8085F1C(struct UNK_8085F1C *p1)
{
    struct UNK_8085F1C_1 *sub = 
# 984 "src/game/math.c" 3 4
                               ((void *)0)
# 984 "src/game/math.c"
                                   ;

    if (p1->unk0 != 
# 986 "src/game/math.c" 3 4
                   ((void *)0)
# 986 "src/game/math.c"
                       ) {
        sub = sub_8085EC4(p1);
    }

    if ((p1->unkC & 3) == 3) {
        if (sub != 
# 991 "src/game/math.c" 3 4
                  ((void *)0)
# 991 "src/game/math.c"
                      ) {
            sub_8083B88(&p1->unk34, sub, &p1->unk14);
        }
    } else {
        if (!(p1->unkC & 1)) {
            sub_80853F8(p1);

            p1->unkC |= 0x1;
            p1->unkC &= ~0x2;
        }

        sub_8083B88(&p1->unk34, sub, &p1->unk14);
    }

    return &p1->unk14;
}

__attribute__((unused)) void sub_8085F84(void)
{

}
